{
  description = "NixOS Neovim Configuration Flake with nvf";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    nvf = {
      url = "github:notashelf/nvf";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    {
      self,
      nixpkgs,
      flake-utils,
      nvf,
      ...
    }:
    flake-utils.lib.eachDefaultSystemPassThrough (
      system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
        #nothing legacy just a flattened interface
        languages = [

          ./modules/languages/python.nix
          ./modules/languages/yaml.nix
          ./modules/languages/typescript.nix
          ./modules/languages/typst.nix
          ./modules/languages/bash.nix
        ];
        batteries = [
          ./modules/git.nix
          ./modules/fmt.nix
          ./modules/telescope.nix
          ./modules/theme.nix
          ./modules/base.nix
          ./modules/lsp.nix
          ./modules/cmp.nix
          ./modules/oil.nix
        ]
        ++ languages;
      in
      {
        #nixosModules.default = (
        #{ config, pkgs, ... }:
        #{
        #imports = configModules;
        #config = defaultOptions;
        #}
        #);
        packages.${system} = {
          default =
            (nvf.lib.neovimConfiguration {
              pkgs = pkgs;
              modules = batteries;
            }).neovim;
        };
      }
    );
}
