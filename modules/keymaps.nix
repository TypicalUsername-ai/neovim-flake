{
  config,
  pkgs,
  ...
}:
let
  cfg = config.nvim-batteries;
  oil-keymaps = [
    {
      key = "-";
      mode = [ "n" ];
      action = "<cmd>Oil<CR>";
      silent = true;
      desc = "Open CWD in Oil buffer";
    }
  ];

in
with pkgs.lib;
{
  config = {
    programs.nvf.settings.vim.keymaps = mkMerge [
      (mkIf cfg.oil.enable oil-keymaps)
    ];
  };
}
