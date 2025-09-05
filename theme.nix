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
    visuals.nvim-cursorline = {
      enable = true;
    };
  };

}
