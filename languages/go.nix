{ config, pkgs, ... }:
{
  config.vim.languages.go = {
    enable = true;
    format = {
      enable = false;
      package = pkgs.go;
      type = "gofmt";
    };
    lsp = {
      enable = true;
      package = pkgs.gopls;
      server = "gopls";
    };
    treesitter = {
      enable = true;
    };
  };

}
