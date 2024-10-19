{
  plugins.dashboard = {
    enable = true;
    settings = {
      theme = "doom";
      config = {
        header = [
          ""
          ""
          ""
          ""
          "██╗  ██╗██╗██╗     ██╗         ██╗   ██╗ ██████╗ ██╗   ██╗██████╗ ███████╗███████╗██╗     ███████╗"
          "██║ ██╔╝██║██║     ██║         ╚██╗ ██╔╝██╔═══██╗██║   ██║██╔══██╗██╔════╝██╔════╝██║     ██╔════╝"
          "█████╔╝ ██║██║     ██║          ╚████╔╝ ██║   ██║██║   ██║██████╔╝███████╗█████╗  ██║     █████╗  "
          "██╔═██╗ ██║██║     ██║           ╚██╔╝  ██║   ██║██║   ██║██╔══██╗╚════██║██╔══╝  ██║     ██╔══╝  "
          "██║  ██╗██║███████╗███████╗       ██║   ╚██████╔╝╚██████╔╝██║  ██║███████║███████╗███████╗██║     "
          "╚═╝  ╚═╝╚═╝╚══════╝╚══════╝       ╚═╝    ╚═════╝  ╚═════╝ ╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝╚═╝     "
          ""
          ""
          ""
        ];
        center = [
          {
            action = "Telescope find_files";
            desc = " Find file";
            icon = " ";
            key = "f";
          }
          {
            action = "ene | startinsert";
            desc = " New file";
            icon = " ";
            key = "n";
          }
          {
            action = "Telescope oldfiles";
            desc = " Recent files";
            icon = " ";
            key = "r";
          }
          {
            action = "Telescope live_grep";
            desc = " Find text";
            icon = " ";
            key = "g";
          }
          {
            action = "qa";
            desc = " Quit";
            icon = " ";
            key = "q";
          }
        ];
      };
    };
  };
}
