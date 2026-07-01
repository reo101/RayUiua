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
            ));
        };

        devShells.default = pkgs.mkShell {
          buildInputs = [
            pkgs.pkg-config
          ];

          nativeBuildInputs = [
            self'.packages.uiua
            pkgs.raylib
            pkgs.sdl3
          ];

          env.RAYLIB_API_JSON = "${pkgs.raylib.src}/tools/rlparser/output/raylib_api.json";
        };
      };
  }
)
