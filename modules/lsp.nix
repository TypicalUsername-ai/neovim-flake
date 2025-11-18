{ config, pkgs, ... }:
{
  config.vim = {
    lsp = {
      inlayHints.enable = true;
      lspSignature.enable = true;
      lspconfig = {
        enable = true;
      };

    };

    binds.whichKey = {
      enable = true;
    };

    languages.nix = {
      enable = true;
      format = {
        type = "nixfmt";
        enable = true;
      };
      lsp = {
        enable = true;
      };
      treesitter.enable = true;
    };
  };
}
