{ config, pkgs, ... }:
{
  config.vim.languages.ts = {
    enable = true;
    format = {
      enable = true;
      type = [ "prettier" ];
    };
    lsp = {
      enable = true;
      servers = [ "denols" ];
    };
    treesitter = {
      enable = true;
    };
  };

}
