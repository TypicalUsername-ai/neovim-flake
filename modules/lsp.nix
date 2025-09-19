{ config, pkgs, ... }:
{
  programs.nvf.settings.vim.lsp = {
    trouble = {
      enable = true;
    };
    lspconfig = {
      enable = true;
    };
  };

  programs.nvf.settings.vim.languages.nix = {
    enable = true;
    format = {
      type = "nixfmt";
      enable = true;
    };
    lsp = {
      enable = true;
    };
    treesitter.enable = true;
  };

  environment.systemPackages = with pkgs; [ nixfmt ];

}
