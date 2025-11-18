{ config, pkgs, ... }:
{
  config.vim.lsp.trouble = {
    enable = true;
    mappings = {
      symbols = "<leader>ts";
      quickfix = "<leader>qf";
      workspaceDiagnostics = "<leader>tt";
    };
  };
}
