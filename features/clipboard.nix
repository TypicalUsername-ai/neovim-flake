{
  pkgs,
  lib,
  ...
}:
{
  config.vim = {
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
