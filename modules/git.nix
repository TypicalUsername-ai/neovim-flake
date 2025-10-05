{
  config,
  pkgs,
  ...
}:
with pkgs.lib;
{

  config.vim.git = {
    enable = true;
    git-conflict.enable = true;
    gitsigns.enable = true;

  };

}
