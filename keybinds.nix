{
  lib,
  pkgs,
  config,
  ...
}:
with lib;
let
  cfg = config.programs.mvnim.keymaps;
in
{
  options = {
    mnvim = {
      keymaps = {
        enable = mkEnableOption ''Enable Keybinds'';
        disableArrowKeys = mkOption {
          type = types.bool;
          default = true;
          description = ''Disable arrow key usage to force HJKL'';
        };

      };
    };
  };

  config = mkIf cfg.enable { };
}
