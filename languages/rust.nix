{ config, pkgs, ... }:
{
  config.vim.languages.rust = {
    enable = true;
    format = {
      enable = true;
    };
    lsp = {
      enable = true;
      package = pkgs.rust-analyzer;
    };
    treesitter = {
      enable = true;
    };
  };

}
