{
  imports = [ ./colorschemes/catppuccin.nix ./plugins ];

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
