_: {
  vim = {
    languages.terraform = {
      enable = true;
      lsp = {
        enable = true;
        #servers = [ "tofu-lf" ]; # can also be terraform-ls
      };
      format = {
        enable = true;
        #type = [ "opentofu" ]; # or terraform / injected <?>
      };
      treesitter = {
        enable = true;
      };
    };

    formatter.conform-nvim.presets.terraform.enable = false;
    lsp.presets.terraform-ls.enable = false;
  };
}
