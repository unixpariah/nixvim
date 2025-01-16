{
  imports = [
    ./plugins
  ];

  colorschemes.base16 = {
    enable = true;
    colorscheme = "tokyo-night-storm";
    settings.telescope_borders = true;
  };

  globals.mapleader = " ";

  clipboard = {
    providers.wl-copy.enable = true;
    register = "unnamedplus";
  };

  opts = {
    number = true;
    relativenumber = true;
    shiftwidth = 4;
    scrolloff = 3;
    ignorecase = true;
    smartcase = true;
    breakindent = true;
    hlsearch = false;
  };
}
