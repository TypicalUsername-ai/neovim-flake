{
  config,
  pkgs,
  lib,
  nvf,
  ...
#inputs,
#specialArgs,
#options,
#_class,
#modulesPath,
#_prefix
}@inputs:
{

  config.vim = {
    lazy.enable = true;
    viAlias = true;
    vimAlias = true;
    globals.mapleader = " ";
    globals.editorconfig = false;
    languages = {
      enableFormat = true;
      enableTreesitter = true;
    };
    clipboard.providers.wl-copy = {
      enable = true;
      package = pkgs.wl-clipboard;
    };
    keymaps = lib.mkAfter [
      {
        key = "Y";
        mode = [
          "n"
          "v"
        ];
        action = ''"+y'';
        desc = "Yank to systemp clipboard";
      }
    ];
  };

}
