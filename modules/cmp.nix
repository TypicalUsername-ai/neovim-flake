{
  config,
  pkgs,
  ...
}:
let
  cfg = config.nvim-batteries.completions;
in
with pkgs.lib;
{
  options = {
    nvim-batteries.completions.enable = mkEnableOption "nvim-cmp completions";
  };

  config = {
    programs.nvf.settings.vim.autocomplete.nvim-cmp = mkIf cfg.enable {
      enable = true;
      sourcePlugins = [
        "cmp-nvim-lsp" # from lsp suggestions
        "cmp-treesitter" # from treesitter defs

      ];
    };
  };

}
