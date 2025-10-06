{ config, pkgs, ... }:
{
  config.vim.languages.bash = {
    enable = true;
    extraDiagnostics = {
      enable = true;
      types = [ "shellcheck" ];
    };
    format = {
      enable = true;
      type = "shfmt";
    };
    lsp = {
      enable = true;
      package = pkgs.bash-language-server;
    };
    treesitter = {
      enable = true;
    };
  };

}
