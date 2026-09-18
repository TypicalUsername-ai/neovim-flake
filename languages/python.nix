_: {
  vim.languages.python = {
    enable = true;
    format = {
      enable = true;
      type = [ "ruff" ];
    };
    lsp = {
      enable = true;
      servers = [ "ty" ];
    };
    treesitter = {
      enable = true;
    };
  };

}
