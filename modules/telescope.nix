{
  config,
  pkgs,
  ...
}:
let
  cfg = config.nvim-batteries.telescope;
in
with pkgs.lib;
{
  options = {
    nvim-batteries.telescope.enable = mkEnableOption "telescope config";
  };

  config = {
    programs.nvf.settings.vim.telescope = mkIf cfg.enable {
      enable = true;
    };
  };

}
