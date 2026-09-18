{ config, pkgs, ... }:
{
  config.vim.languages.go = {
    enable = true;
    format = {
      enable = false; # because gopls does the formatting
      type = [ "gofmt" ];
    };
    lsp = {
      enable = true;
      servers = [ "gopls" ];
    };
    treesitter = {
      enable = true;
    };
  };

}
