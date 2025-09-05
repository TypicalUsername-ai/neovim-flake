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
    }@inputs:

    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
        mnvim =
          (nvf.lib.neovimConfiguration {
            pkgs = pkgs;
            modules = [
              ./theme.nix
              ./keybinds.nix
            ];
          }).neovim;

      in
      {

        overlays.default = final: prev: {
          mnvim = final.callPackage self.default;
        };

        packages.default = mnvim;

      }
    );
}
