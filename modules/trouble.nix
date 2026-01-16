{
  config,
  pkgs,
  lib,
  ...
}:
{
  config.vim = {
    lsp.trouble = {
      enable = true;
      mappings = {
        symbols = "<leader>ts";
        quickfix = "<leader>qf";
        workspaceDiagnostics = "<leader>ld";
      };
    };

    keymaps = lib.mkAfter [
      {
        key = "<leader>xx";
        mode = [
          "n"
          "v"
        ];
        action = "<cmd>Trouble diagnostics toggle<CR>";
        silent = true;
        desc = "Diagnostics (Trouble)";
      }
    ];

    lazy.plugins.trouble = {
      cmd = [ "Trouble" ];
      after = "require('trouble').refresh()";
    };
  };
}
