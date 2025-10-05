{
  config,
  pkgs,
  ...
}:
{
  config.vim = {
    telescope = {
      enable = true;
    };
  };
}
