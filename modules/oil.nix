{
  config,
  pkgs,
  ...
}:
let
  cfg = config.nvim-batteries.oil;
in
with pkgs.lib;
{
  options = {
    nvim-batteries.oil.enable = mkEnableOption "Oil.nvim";
  };

  config = {
    programs.nvf.settings.vim.utility.oil-nvim = mkIf cfg.enable {
      enable = true;
      setupOpts = {
        default_file_explorer = true;
        view_options = {
          show_hidden = true;
        };
        columns = [
          "icon"
          #"permissions"
          #"size"
          #"mtime"
        ];

      };
    };
  };

}
