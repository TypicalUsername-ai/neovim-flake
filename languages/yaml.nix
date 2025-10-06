{ config, pkgs, ... }:
{
  config.vim.languages.yaml = {
    enable = true;
    lsp = {
      enable = true;
    };
    treesitter = {
      enable = true;
    };
  };

}
