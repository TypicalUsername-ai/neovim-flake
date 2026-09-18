_: {
  config.vim = {
    lsp = {
      enable = true;
      inlayHints.enable = true;
      lspSignature.enable = true;
      lspconfig = {
        enable = true;
      };

    };

    binds.whichKey = {
      enable = true;
    };

    diagnostics = {
      enable = true;
      config = {
        virtual_lines = true;
        virtual_text = true;
      };
    };

  };
}
