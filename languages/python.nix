{ config, pkgs, ... }:
{
  config.vim.languages.python = {
    enable = true;
    format = {
      enable = true;
      package = pkgs.ruff;
      type = "ruff";
    };
    lsp = {
      enable = true;
    };
    treesitter = {
      enable = true;
    };
  };

}
