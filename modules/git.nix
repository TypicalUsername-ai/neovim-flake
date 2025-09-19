{
  config,
  pkgs,
  ...
}:
let
  cfg = config.nvim-batteries.git;
in
with pkgs.lib;
{
  options = {
    nvim-batteries.git.enable = mkEnableOption "git support";
  };

  config = {
    programs.nvf.settings.vim.git = mkIf cfg.enable {
      enable = true;
      git-conflict.enable = true;
      gitsigns.enable = true;

    };
  };

}
