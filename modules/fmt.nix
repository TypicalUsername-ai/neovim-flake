{
  config,
  pkgs,
  ...
}:
let
  cfg = config.nvim-batteries.formatting;
in
with pkgs.lib;
{
  options = {
    nvim-batteries.formatting.enable = mkEnableOption "conform-nvim formatting";
  };

  config = {
    programs.nvf.settings.vim.formatter.conform-nvim = mkIf cfg.enable {
      enable = true;
      setupOpts = {
        format_on_save = {
          lsp_format = "fallback";
          timeout_ms = 750;
        };
        default_format_opts = {
          lsp_format = "fallback";
        };
        formatters_by_ft = {
          nix = [
            "nixfmt"
          ];
        };
      };

    };
  };

}
