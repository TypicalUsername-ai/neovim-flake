_: {
  config.vim.languages.yaml = {
    enable = true;
    lsp = {
      enable = true;
      servers = [ "yaml-language-server" ];
    };
    format = {
      enable = true;
      type = [ "deno" ];
    };
    treesitter = {
      enable = true;
    };
  };

}
