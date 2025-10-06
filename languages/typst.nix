{ config, pkgs, ... }:
{
  config.vim.languages.typst = {
    enable = true;
    format = {
      enable = true;
      type = "typstfmt";
      package = pkgs.typstfmt;
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
