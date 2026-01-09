{ config, pkgs, ... }:
{
  config.vim.languages.go = {
    enable = true;
    format = {
      enable = false;
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
