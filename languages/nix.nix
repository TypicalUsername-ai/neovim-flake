_: {
  config.vim.languages.nix = {
    enable = true;
    format = {
      type = [ "nixfmt-rs" ];
      enable = true;
    };
    lsp = {
      enable = true;
      #servers = ["nil"] # is default
    };
    treesitter.enable = true;
    extraDiagnostics.enable = true;
  };
}
