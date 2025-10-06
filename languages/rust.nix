{
  config,
  pkgs,
  lib,
  ...
}:
{
  vim.languages.rust = {
    enable = true;
    format = {
      enable = true;
      package = pkgs.rust-bin.stable.latest.rustfmt;
    };
    lsp = {
      enable = true;
      package = pkgs.rust-analyzer;
    };
    treesitter = {
      enable = true;
    };
  };
}
