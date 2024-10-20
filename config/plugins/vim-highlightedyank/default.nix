{ pkgs, ... }: {
  extraPlugins = with pkgs.vimPlugins; [ vim-highlightedyank ];

  extraConfigLua = ''
    vim.g.highlightedyank_highlight_duration = 150
  '';
}
