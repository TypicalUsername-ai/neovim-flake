{ config, pkgs, ... }:
{
  config.vim.languages.python = {
    enable = true;
    format = {
      enable = true;
      type = [ "ruff" ];
    };
    lsp = {
      enable = true;
      servers = [ "basedpyright" ];
    };
    treesitter = {
      enable = true;
    };
  };

}
