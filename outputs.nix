inputs:
inputs.flake-parts.lib.mkFlake { inherit inputs; } (
  {
    withSystem,
    flake-parts-lib,
    lib,
    config,
    ...
  }:
  {
    systems = import inputs.systems.outPath;

    imports = [
      inputs.flake-file.flakeModules.default
    ];

    flake-file = {
      nixConfig = {
        commit-lockfile-summary = "chore(flake): update `flake.lock`";
        extra-experimental-features = [
          "pipe-operators"
        ];
      };

      inputs = {
        systems = {
          url = "github:nix-systems/default";
        };

        nixpkgs = {
          url = "github:nixos/nixpkgs/nixos-unstable";
        };

        flake-file = {
          url = "github:vic/flake-file";
        };

        flake-parts = {
          url = "github:hercules-ci/flake-parts";
          inputs.nixpkgs-lib.follows = "nixpkgs";
        };
      };
    };

    debug = true;

    perSystem =
      {
        pkgs,
        system,
        inputs',
        self',
        ...
      }:
      {
        devShells.default = pkgs.mkShell {
          buildInputs = [
            pkgs.pkg-config
          ];

          nativeBuildInputs = [
            pkgs.uiua
            (pkgs.raylib.overrideAttrs (oldAttrs: rec {
              version = "6.0";
              src = pkgs.fetchFromGitHub {
                owner = "raysan5";
                repo = "raylib";
                tag = version;
                hash = "sha256-8+6MDTMc7Spix4ndAUzp51Q5iWcl7pQmyXuV2RutnOk=";
              };
              propagatedBuildInputs = (oldAttrs.propagatedBuildInputs or []) ++ lib.optionals pkgs.stdenv.hostPlatform.isLinux [
                pkgs.libxrandr
              ];
            }))
          ];
        };
      };
  }
)
