{
  config,
  pkgs,
  ...
}:
{

  config.vim = {
    formatter.conform-nvim = {
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
