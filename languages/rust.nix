_: {
  vim = {
    languages.rust = {
      enable = true;
      format = {
        #enable = true; # LSP does the work
      };
      lsp = {
        enable = true;
        servers = [ "rust-analyzer" ];
      };
      treesitter = {
        enable = true;
      };
    };

    lsp.presets.rust-analyzer.enable = true;
    formatter.conform-nvim.presets.rustfmt.enable = true;
  };

}
