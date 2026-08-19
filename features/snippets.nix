{
  config,
  pkgs,
  ...
}:
{
  config.vim = {
    snippets.luasnip = {
      enable = true;
    };
  };

}
