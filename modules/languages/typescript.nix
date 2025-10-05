{ config, pkgs, ... }:
{
  config.vim.languages.ts = {
    enable = true;
    format = {
      enable = true;
      type = "prettier";
    };
    lsp = {
      enable = true;
      package = pkgs.deno;
      server = "denols";
    };
    treesitter = {
      enable = true;
    };
  };

}
