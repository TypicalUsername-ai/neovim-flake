{
  config,
  pkgs,
  lib,
  ...
}:
{
  config.vim = {
    utility.oil-nvim = {
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
    keymaps = lib.mkAfter [

      {
        key = "-";
        mode = [ "n" ];
        action = "<cmd>Oil<CR>";
        silent = true;
        desc = "Open CWD in Oil buffer";
      }
    ];
  };

}
