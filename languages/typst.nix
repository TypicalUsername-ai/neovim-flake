{ config, pkgs, ... }:
{
  config.vim.languages.typst = {
    enable = true;
    format = {
      enable = true;
      type = "typstyle";
    };
    lsp = {
      enable = true;
      server = "tinymist";
      package = pkgs.tinymist;
    };
    treesitter = {
      enable = true;
    };
  };

}
