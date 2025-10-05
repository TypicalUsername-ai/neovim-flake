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
        "nvim-lspconfig"
        #"cmp-nvim-lsp" # from lsp suggestions
        "trouble"
        "cmp-treesitter" # from treesitter defs
      ];
    };
  };

}
