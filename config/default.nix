{
  imports = [ ./colorschemes/catppuccin.nix ./plugins ];

  globals.mapleader = " ";

  clipboard = {
    providers.wl-copy.enable = true;
    register = "unnamedplus";
  };

  #options = {
  #  number = true;
  #  relativenumber = true;
  #  shiftwidth = 4;
  #};
}
