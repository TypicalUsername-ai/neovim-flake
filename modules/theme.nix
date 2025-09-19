{
  config,
  ...
}:
{
  programs.nvf.settings.vim = {
    binds.whichKey.enable = true;
    theme = {
      enable = true;
      name = "tokyonight";
      style = "night";
    };
    statusline.lualine = {
      enable = true;
    };
    visuals = {
      nvim-cursorline = {
        enable = true;
        setupOpts = {
          cursorline = {
            enable = true;
            number = true;
          };
          cursorword.enable = true;
        };
      };
      nvim-web-devicons.enable = true;
      indent-blankline.enable = true;
      rainbow-delimiters.enable = true;
      fidget-nvim.enable = true;
    };
  };

}
