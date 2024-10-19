{
  plugins.telescope = {
    enable = true;

    keymaps = {
      "<leader>fg" = {
        action = "live_grep";
        options.desc = "Grep (root dir)";
      };
      "<leader>ff" = {
        action = "find_files";
        options.desc = "Find project files";
      };
    };
  };
}
