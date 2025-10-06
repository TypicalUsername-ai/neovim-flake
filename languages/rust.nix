{ config, pkgs, ... }:
{
  config.vim.languages.rust = {
    enable = true;
    format = {
      enable = true;
      package = pkgs.rustfmt;
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
