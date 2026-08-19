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
    languages = {
      enableFormat = true;
      enableTreesitter = true;
    };
  };
}
