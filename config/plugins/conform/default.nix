{
  plugins.conform-nvim = {
    enable = true;
    settings.formatters_by_ft = {
      rust = [ "rustfmt" ];
      wgsl = [ "wgslfmt" ];
      c = [ "clang_format" ];
      cpp = [ "clang_format" ];
      glsl = [ "clang_format" ];
      vert = [ "clang_format" ];
      frag = [ "clang_format" ];
      csharp = [ "dotnet-csharpier" ];
      scss = [ "prettierd" ];
      json = [ "prettierd" ];
      yaml = [ "prettierd" ];
      asm = [ "asmfmt" ];
      zig = [ "zig fmt" ];
      sh = [ "shfmt" ];
      html = {
        __unkeyed-1 = "prettierd";
        __unkeyed-2 = "prettier";
        stop_after_first = true;
      };
      css = {
        __unkeyed-1 = "prettierd";
        __unkeyed-2 = "prettier";
        stop_after_first = true;
      };
      javascript = {
        __unkeyed-1 = "prettierd";
        __unkeyed-2 = "prettier";
        stop_after_first = true;
      };
      javascriptreact = {
        __unkeyed-1 = "prettierd";
        __unkeyed-2 = "prettier";
        stop_after_first = true;
      };
      typescript = {
        __unkeyed-1 = "prettierd";
        __unkeyed-2 = "prettier";
        stop_after_first = true;
      };
      typescriptreact = {
        __unkeyed-1 = "prettierd";
        __unkeyed-2 = "prettier";
        stop_after_first = true;
      };
      java = [ "google-java-format" ];
      python = [ "black" ];
      lua = [ "stylua" ];
      nix = [ "nixfmt" ];
      markdown = {
        __unkeyed-1 = "prettierd";
        __unkeyed-2 = "prettier";
        stop_after_first = true;
      };
    };
    settings.format_on_save = {
      timeoutMs = 500;
      lspFallback = true;
    };
  };
}
