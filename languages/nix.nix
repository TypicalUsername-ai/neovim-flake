{ ... }: {
  config.vim = {
    languages.nix = {
      enable = true;
      format = {
        type = [ "nixfmt-rs" ];
        enable = true;
      };
      lsp = {
        enable = true;
      };
      treesitter.enable = true;
      extraDiagnostics.enable = true;
    };
  };

}
