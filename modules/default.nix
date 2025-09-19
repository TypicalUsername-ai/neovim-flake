{
  config,
  nvf,
  ...
#inputs,
#lib,
#specialArgs,
#options,
#_class,
#modulesPath,
#_prefix
}@inputs:
{

  config = {
    programs.nvf = {
      enable = true;
      settings.vim = {
        lazy.enable = false;
        viAlias = true;
        vimAlias = true;
        globals.mapleader = " ";
        globals.editorconfig = false;
        languages = {
          enableFormat = true;
          enableTreesitter = true;
        };
        clipboard.providers.wl-copy.enable = true;
        keymaps = [
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
    };
  };
  options = {
  };
}
