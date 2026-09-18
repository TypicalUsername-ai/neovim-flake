{
  description = "NixOS Neovim Configuration Flake with nvf";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nvf = {
      url = "github:notashelf/nvf";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    flake-parts = {
      url = "github:hercules-ci/flake-parts";
    };
  };

  outputs =
    inputs@{
      flake-parts,
      nvf,
      ...
    }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [ "x86_64-linux" ]; # the systems supported by the flake
      #per-system supports the self' argument which is the flake buth with the system already selected
      #the same works for using inputs' instead of inputs
      perSystem =
        {
          pkgs,
          ...
        }:
        {
          formatter = pkgs.nixfmt-rs;
          packages = {
            default =
              (nvf.lib.neovimConfiguration {
                inherit pkgs;
                modules = [
                  features/base.nix
                  features/fmt.nix
                  features/git.nix
                  features/clipboard.nix
                  features/theme.nix
                  features/oil.nix
                  features/lsp.nix
                  features/trouble.nix
                  languages/nix.nix
                  languages/python.nix
                  languages/rust.nix
                ];
              }).neovim;
          };
        };
    };
}
