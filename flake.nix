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
        configModules = [
          nvf.nixosModules.default
          ./modules/default.nix
          ./modules/keymaps.nix
          ./modules/oil.nix
          ./modules/lsp.nix
          ./modules/cmp.nix
          ./modules/theme.nix
          ./modules/fmt.nix
          ./modules/git.nix
          ./modules/telescope.nix
          ./modules/languages/python.nix
        ];
      in
      {
        nixosModules.default = (
          { config, pkgs, ... }:
          {
            imports = configModules;
            config = {
              nvim-batteries = {
                oil.enable = true;
                completions.enable = true;
                formatting.enable = true;
              };
            };
          }
        );
      }
    );
}
