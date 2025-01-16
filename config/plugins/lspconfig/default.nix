{
  plugins.lsp = {
    enable = true;
    capabilities = "offsetEncoding = 'utf-16'";
    servers = {
      omnisharp = {
        enable = true;
        package = null;
      };
      nixd = {
        enable = true;
        package = null;
        settings = {
          nixpkgs.expr = "import (builtins.getFlake \"/var/lib/nixconf\").inputs.nixpkgs { }";
          home-manager.expr = "(builtins.getFlake \"/var/lib/nixconf\").homeConfigurations.unixpariah@laptop.options";
        };
      };
      zls = {
        enable = true;
        package = null;
      };
      clangd = {
        enable = true;
        package = null;
      };
      lua_ls = {
        enable = true;
        package = null;
        extraOptions = {
          settings = {
            Lua = {
              completion.callSnippet = "Replace";
              diagnostics.globals = [ "vim" ];

              telemetry.enabled = false;
              hint.enable = true;
            };
          };
        };
      };
      rust_analyzer = {
        enable = true;
        package = null;
        installCargo = false;
        installRustc = false;
        settings = {
          inlayHints = {
            enable = true;
            showParameterNames = true;
            parameterHintsPrefix = "<- ";
            otherHintsPrefix = "=> ";
          };
          procMacro.enable = true;
        };
      };
      wgsl_analyzer = {
        enable = true;
        package = null;
      };
      gopls = {
        enable = true;
        package = null;
      };
      ts_ls = {
        enable = true;
        package = null;
        autostart = true;
        filetypes = [
          "javascript"
          "javascriptreact"
          "typescript"
          "typescriptreact"
        ];
        extraOptions = {
          settings = {
            javascript = {
              inlayHints = {
                includeInlayEnumMemberValueHints = true;
                includeInlayFunctionLikeReturnTypeHints = true;
                includeInlayFunctionParameterTypeHints = true;
                includeInlayParameterNameHints = "all";
                includeInlayParameterNameHintsWhenArgumentMatchesName = true;
                includeInlayPropertyDeclarationTypeHints = true;
                includeInlayVariableTypeHints = true;
                includeInlayVariableTypeHintsWhenTypeMatchesName = true;
              };
            };
            typescript = {
              inlayHints = {
                includeInlayEnumMemberValueHints = true;
                includeInlayFunctionLikeReturnTypeHints = true;
                includeInlayFunctionParameterTypeHints = true;
                includeInlayParameterNameHints = "all";
                includeInlayParameterNameHintsWhenArgumentMatchesName = true;
                includeInlayPropertyDeclarationTypeHints = true;
                includeInlayVariableTypeHints = true;
                includeInlayVariableTypeHintsWhenTypeMatchesName = true;
              };
            };
          };
        };
      };
      eslint = {
        package = null;
        enable = true;
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
