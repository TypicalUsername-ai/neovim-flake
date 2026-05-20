{ config, pkgs, ... }:
{
  config.vim.languages.typescript = {
    enable = true;
    format = {
      enable = true;
      type = [ "prettier" ];
    };
    lsp = {
      enable = true;
      servers = [ "deno" ];
    };
    treesitter = {
      enable = true;
    };
  };

}
