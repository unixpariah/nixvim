{
  plugins = {
    bufferline.enable = true;
    web-devicons.enable = true;
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>bd";
      action = "<cmd>bd!<CR>";
      options = {
        desc = "Close current buffer";
        silent = true;
        noremap = true;
      };
    }
    {
      mode = "n";
      key = "L";
      action = "<cmd>BufferLineCycleNext<CR>";
      options = {
        desc = "Cycle to next buffer";
        silent = true;
        noremap = true;
      };
    }
    {
      mode = "n";
      key = "H";
      action = "<cmd>BufferLineCyclePrev<CR>";
      options = {
        desc = "Cycle to previous buffer";
        silent = true;
        noremap = true;
      };
    }
  ];
}
