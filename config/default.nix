{
  imports = [
    ./plugins
    ./keymaps
  ];

  colorschemes.base16 = {
    enable = true;
    colorscheme = "catppuccin";
    settings.telescope_borders = true;
  };

  clipboard = {
    providers.wl-copy.enable = true;
    register = "unnamedplus";
  };

  opts = {
    number = true;
    relativenumber = true;
    tabstop = 2;
    softtabstop = 2;
    showtabline = 2;
    expandtab = true;
    smartindent = true;
    shiftwidth = 2;
    scrolloff = 3;
    breakindent = true;
    hlsearch = true;
    incsearch = true;
    wrap = true;
    splitbelow = true;
    splitright = true;
    ignorecase = true;
    smartcase = true;
    grepprg = "rg --vimgrep";
    grepformat = "%f:%l:%c:%m";
    updatetime = 50;
    swapfile = false;
    backup = false;
    undofile = true;
    signcolumn = "yes";
    foldcolumn = "0";
    foldlevel = 99;
    foldlevelstart = 99;
    foldenable = true;
    foldmethod = "expr";
    foldexpr = "v:lua.vim.treesitter.foldexpr()";
    encoding = "utf-8";
    fileencoding = "utf-8";
    list = true;
    cmdheight = 2;
    showmode = false;
    pumheight = 0;
    formatexpr = "v:lua.require'conform'.formatexpr()";
    laststatus = 3;
    inccommand = "split";
  };
}
