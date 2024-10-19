{
  plugins.conform-nvim = {
    enable = true;
    settings.formatters_by_ft = { nix = [ "nixfmt" ]; };
    settings.format_on_save = {
      timeoutMs = 500;
      lspFallback = true;
    };
  };
}
