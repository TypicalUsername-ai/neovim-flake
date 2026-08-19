{ config, pkgs, ... }: {
  config.vim.languages.nix = {
    enable = true;
    format = {
      type = [ "nixfmt" ];
      enable = true;
    };
    lsp = {
      enable = true;
    };
    treesitter.enable = true;
  };

}
