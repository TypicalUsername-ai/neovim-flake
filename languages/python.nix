{ config, pkgs, ... }:
{
  config.vim.languages.python = {
    enable = true;
    format = {
      enable = true;
      type = "ruff";
    };
    lsp = {
      enable = true;
      package = pkgs.basedpyright;
    };
    treesitter = {
      enable = true;
    };
  };

}
