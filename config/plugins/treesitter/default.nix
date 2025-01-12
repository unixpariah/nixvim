{ pkgs, ... }:
{
  plugins.treesitter = {
    enable = true;

    settings = {
      highlight.enable = true;
      indent.enable = true;
      autopairs.enable = true;
      folding.enable = true;
    };

    nixvimInjections = true;

    grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
      just
      c_sharp
      c
      cpp
      rust
      zig
      glsl
      bash
      json
      lua
      make
      make
      markdown
      nix
      regex
      toml
      vim
      vimdoc
      xml
      yaml
      wgsl
      git_config
      git_rebase
      gitattributes
      gitcommit
      gitignore
    ];

    luaConfig.post = ''
      vim.filetype.add({
        extension = {
          vert = "glsl",
          frag = "glsl",
        },
      })
    '';
  };
}
