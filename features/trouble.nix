{
  ...
}:
{
  config.vim = {
    # required for trouble to be loaded
    lsp.enable = true;
    lsp.trouble = {
      enable = true;
    };
  };
  /**
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
          *
  */
}
