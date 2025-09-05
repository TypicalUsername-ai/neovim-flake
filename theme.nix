{
  pkgs,
  config,
  ...
}:
{
  config.vim = {
    theme = {
      enable = true;
      name = "tokyonight";
      style = "night";
    };
    statusline.lualine = {
      enable = true;
    };
    visuals.cursorline = {
      enable = true;
    };
  };

}
