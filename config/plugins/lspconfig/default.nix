{
  plugins.lsp = {
    enable = true;
    capabilities = "offsetEncoding = 'utf-16'";
    servers = {
      nixd.enable = true;
      zls.enable = true;
      clangd.enable = true;
      lua_ls = {
        enable = true;
        extraOptions = {
          settings = {
            Lua = {
              completion = { callSnippet = "Replace"; };
              diagnostics = { globals = [ "vim" ]; };

              telemetry = { enabled = false; };
              hint = { enable = true; };
            };
          };
        };
      };
      rust_analyzer = {
        enable = true;
        installCargo = true;
        installRustc = true;
        settings = {
          checkOnSave = true;
          check = { command = "clippy"; };
          # inlayHints = {
          #   enable = true;
          #   showParameterNames = true;
          #   parameterHintsPrefix = "<- ";
          #   otherHintsPrefix = "=> ";
          # };
          procMacro.enable = true;
        };
      };
    };

    keymaps = {
      silent = true;
      lspBuf = {
        gd = {
          action = "definition";
          desc = "Goto Definition";
        };
        gr = {
          action = "references";
          desc = "Goto References";
        };
        gD = {
          action = "declaration";
          desc = "Goto Declaration";
        };
        gI = {
          action = "implementation";
          desc = "Goto Implementation";
        };
        gT = {
          action = "type_definition";
          desc = "Type Definition";
        };
        K = {
          action = "hover";
          desc = "Hover";
        };
        "<leader>cr" = {
          action = "rename";
          desc = "Rename";
        };
        "<leader>ca" = {
          action = "code_action";
          desc = "Code Action";
        };
      };
      diagnostic = {
        "[d" = {
          action = "goto_next";
          desc = "Next Diagnostic";
        };
        "]d" = {
          action = "goto_prev";
          desc = "Previous Diagnostic";
        };
      };
    };
  };
}
