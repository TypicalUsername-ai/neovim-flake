_: {
  config.vim.languages.typescript = {
    enable = true;
    format = {
      enable = true;
      type = [
        "biome"
        # "biome-check"
        #"biome-organize-imports"
      ];
    };
    lsp = {
      enable = true;
      servers = [ "deno" ];
    };
    treesitter = {
      enable = true;
    };
  };

}
