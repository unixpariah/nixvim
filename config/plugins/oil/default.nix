{
  plugins.oil = {
    enable = true;
    settings.useDefaultKeymaps = true;
    settings.keymaps = { "-" = "actions.parent"; };
  };

  keymaps = [{
    mode = "n";
    key = "-";
    action = ":Oil --float<CR>";
    options = {
      desc = "Open parent directory";
      silent = true;
    };
  }];
}
