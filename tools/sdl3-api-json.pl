#!/usr/bin/env perl
use strict;
use warnings;
use JSON::PP qw(encode_json);
use File::Find qw(find);

sub default_include_dir {
  return "$ENV{SDL3_INCLUDE_DIR}" if $ENV{SDL3_INCLUDE_DIR};
  my $dir = `pkg-config --variable=includedir sdl3 2>/dev/null`;
  chomp $dir;
  die "pass an SDL3 include directory or set SDL3_INCLUDE_DIR\n" unless $dir;
  return "$dir/SDL3";
}

sub slurp {
  my ($path) = @_;
  open my $fh, '<', $path or die "open $path: $!\n";
  local $/;
  return <$fh>;
}

sub strip_comments {
  my ($text) = @_;
  $text =~ s{/\*.*?\*/}{}gs;
  $text =~ s{//.*$}{}gm;
  return $text;
}

sub normalize_ws {
  my ($text) = @_;
  $text =~ s/\s+/ /g;
  $text =~ s/^ //;
  $text =~ s/ $//;
  return $text;
}

sub split_params {
  my ($params) = @_;
  $params = normalize_ws($params);
  return () if $params eq '' || $params eq 'void';
  my @parts;
  my $depth = 0;
  my $start = 0;
  for my $i (0 .. length($params) - 1) {
    my $ch = substr($params, $i, 1);
    $depth++ if $ch eq '(';
    $depth-- if $ch eq ')';
    if ($ch eq ',' && $depth == 0) {
      push @parts, normalize_ws(substr($params, $start, $i - $start));
      $start = $i + 1;
    }
  }
  push @parts, normalize_ws(substr($params, $start));
  return @parts;
}

sub parse_param {
  my ($param) = @_;
  return undef if $param =~ /\(\*/ || $param =~ /\)\(/;
  $param =~ s/\b(SDL_IN|SDL_OUT|SDL_INOUT)\b//g;
  $param = normalize_ws($param);
  $param =~ s/\s*\*\s*/ * /g;
  $param = normalize_ws($param);
  return undef unless $param =~ /^(.*?)\s+([A-Za-z_]\w*)$/;
  my ($type, $name) = (normalize_ws($1), $2);
  return { name => $name, type => $type };
}

sub extract_functions {
  my ($include_dir) = @_;
  $include_dir .= '/SDL3' if -d "$include_dir/SDL3" && $include_dir !~ m{/SDL3$};
  my @headers = sort glob "$include_dir/SDL*.h";
  my @functions;
  for my $header (@headers) {
    my $text = strip_comments(slurp($header));
    while ($text =~ /extern\s+SDL_DECLSPEC\s+(.*?)\s+SDLCALL\s+(SDL_\w+)\s*\((.*?)\)\s*;/gs) {
      my ($ret, $name, $params_text) = (normalize_ws($1), $2, $3);
      next if $name =~ /^SDL_[a-z]/;
      $ret =~ s/\s*\*\s*/ * /g;
      $ret = normalize_ws($ret);
      my @params;
      my $unsupported = 0;
      for my $raw (split_params($params_text)) {
        my $parsed = parse_param($raw);
        if (!$parsed) { $unsupported = 1; last; }
        push @params, $parsed;
      }
      next if $unsupported;
      push @functions, { name => $name, returnType => $ret, params => \@params };
    }
  }
  return @functions;
}

my $include_dir = $ARGV[0] // default_include_dir();
my %api = (
  functions => [extract_functions($include_dir)],
  structs => [],
  aliases => [],
  enums => [],
  defines => [],
);
print JSON::PP->new->canonical(1)->pretty(1)->encode(\%api);
