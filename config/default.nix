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
    completeopt = [
      "menuone"
      "noselect"
      "noinsert"
    ];
    swapfile = false;
    backup = false;
    undofile = true;
    termguicolors = true;
    signcolumn = "yes";
    cursorline = false;
    foldcolumn = "0";
    foldlevel = 99;
    foldlevelstart = 99;
    foldenable = true;
    foldmethod = "expr";
    foldexpr = "v:lua.vim.treesitter.foldexpr()";
    timeoutlen = 200;
    encoding = "utf-8";
    fileencoding = "utf-8";
    guicursor = [
      "n-v-c:block"
      "i-ci-ve:block"
      "r-cr:hor20"
      "o:hor50"
      "a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor"
      "sm:block-blinkwait175-blinkoff150-blinkon175"
    ];
    list = true;
    listchars = "eol:↲,tab:|->,lead:·,space: ,trail:•,extends:→,precedes:←,nbsp:␣";
    cmdheight = 2;
    showmode = false;
    pumheight = 0;
    formatexpr = "v:lua.require'conform'.formatexpr()";
    laststatus = 3;
    inccommand = "split";
  };
}
