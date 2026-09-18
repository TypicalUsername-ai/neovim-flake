_: {
  config.vim.languages.markdown = {
    enable = true;
    extensions.markview-nvim = {
      enable = true;
    };
    format = {
      enable = true;
    };
    lsp = {
      enable = true;
      servers = [ "marksman" ]; # it's default but let's be safe
    };
    treesitter = {
      enable = true;
    };
  };
}
