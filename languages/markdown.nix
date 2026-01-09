{ config, pkgs, ... }:
{
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
      package = pkgs.marksman;
    };
    treesitter = {
      enable = true;
    };
  };
}
