{ config, pkgs, ... }:
{
  config.vim.languages.yaml = {
    enable = true;
    lsp = {
      enable = true;
      package = pkgs.yaml-language-server;
    };
    treesitter = {
      enable = true;
    };
  };

}
