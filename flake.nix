{
  description = "A nixvim configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    flake-parts.url = "github:hercules-ci/flake-parts";
  };

  outputs =
    { nixvim, flake-parts, ... }@inputs:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "x86_64-darwin"
        "aarch64-darwin"
      ];

      perSystem =
        { pkgs, system, ... }:
        let
          nixvimModule = {
            inherit pkgs;
            module = import ./config;
            extraSpecialArgs = { inherit inputs; };
          };
        in
        {
          checks.default = nixvim.lib.${system}.check.mkTestDerivationFromNixvimModule nixvimModule;

          packages.default = nixvim.legacyPackages.${system}.makeNixvimWithModule nixvimModule;

          formatter = pkgs.nixfmt-rfc-style;
        };
    };
}
