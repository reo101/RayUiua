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
        packages = {
          uiua =
            (pkgs.uiua.override (
              lib.flip lib.pipe [
                (lib.pipe "Support" [
                  lib.hasSuffix
                  (
                    f:
                    lib.flip lib.pipe [
                      f
                      lib.const
                    ]
                  )
                  lib.filterAttrs
                ])
                (lib.pipe true [
                  lib.const
                  lib.const
                  lib.mapAttrs
                ])
              ] pkgs.uiua.override.__functionArgs
            )).overrideAttrs
              rec {
                version = "unstable-2026-05-06";
                src = pkgs.fetchFromGitHub {
                  owner = "uiua-lang";
                  repo = "uiua";
                  rev = "ec5fad242ac719c126373419037a5fc0e4a69686";
                  hash = "sha256-a7uDabQiRRO9FNWjzFZkaha29M7hNhZuAS/kIoGkGgI=";
                };
                cargoHash = lib.fakeHash;
                cargoDeps = pkgs.rustPlatform.fetchCargoVendor {
                  inherit src;
                  name = "uiua-${version}-vendor";
                  hash = "sha256-dgT2ZRgPEBdG4gSoJJ5KV7RO7hF1dVosCd5CSUqsfHI=";
                };
                doCheck = false;
                doInstallCheck = false;
              };
          raylib = (
            pkgs.raylib.overrideAttrs (oldAttrs: rec {
              version = "6.0";
              src = pkgs.fetchFromGitHub {
                owner = "raysan5";
                repo = "raylib";
                tag = version;
                hash = "sha256-8+6MDTMc7Spix4ndAUzp51Q5iWcl7pQmyXuV2RutnOk=";
              };
              propagatedBuildInputs =
                (oldAttrs.propagatedBuildInputs or [ ])
                ++ lib.optionals pkgs.stdenv.hostPlatform.isLinux [
                  pkgs.libxrandr
                ];
              cmakeFlags = (oldAttrs.cmakeFlags or [ ]) ++ [
                (lib.cmakeBool "GLFW_LINUX_ENABLE_WAYLAND" true)
              ];
            })
          );
        };

        devShells.default = pkgs.mkShell {
          buildInputs = [
            pkgs.pkg-config
          ];

          nativeBuildInputs = [
            self'.packages.uiua
            self'.packages.raylib
            pkgs.sdl3
          ];
        };
      };
  }
)
