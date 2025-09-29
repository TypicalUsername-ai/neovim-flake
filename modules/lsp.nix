{ config, pkgs, ... }:
{
  programs.nvf.settings.vim.lsp.inlayHints.enable = true;
  programs.nvf.settings.vim.lsp.lspSignature.enable = true;
  programs.nvf.settings.vim.lsp.trouble = {
    enable = true;
  };
  programs.nvf.settings.vim.lsp.lspconfig = {
    enable = true;
  };

  vim.binds.whichKey = {
    enable = true;
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
