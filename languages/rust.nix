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
      package = lib.getExe' pkgs.rust-bin.stable.latest.default "rustfmt";
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
