{
  config,
  lib,
  ...
}:
{
  config.vim = {
    lazy.enable = true;
    viAlias = true;
    vimAlias = true;
    globals.mapleader = " ";
    globals.editorconfig = false;
    options = {
      tabstop = 2;
      shiftwidth = 0;
    };
    languages = {
      enableFormat = true;
      enableTreesitter = true;
    };
  };
}
