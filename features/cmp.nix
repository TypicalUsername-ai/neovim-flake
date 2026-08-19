{
  config,
  pkgs,
  ...
}:
{

  config.vim = {
    autocomplete.nvim-cmp = {
      enable = true;
      sourcePlugins = [
        "luasnip"
        "nvim-lspconfig"
        #"cmp-nvim-lsp" # from lsp suggestions
        "trouble"
        "cmp-buffer"
        "cmp-path"
        "conform-nvim"
        #"cmp-treesitter" # from treesitter defs
      ];
    };
  };

}
