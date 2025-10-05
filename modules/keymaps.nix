{
  config,
  pkgs,
  ...
}:
let
  oil-keymaps = [
  ];

in
{
  config.vim = {
    keymaps = final: prev: {
      final = prev // oil-keymaps;
    };
  };
}
