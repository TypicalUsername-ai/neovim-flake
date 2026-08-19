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

  };
}
