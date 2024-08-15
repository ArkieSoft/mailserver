{ config, pkgs, inputs, ... }:
{

  imports = [
    ./bash.nix
    ./git.nix
    ./nixvim.nix
  ];

  home = {
    username = "wyatt";
    homeDirectory = "/home/wyatt";
    stateVersion = "24.05";
    sessionVariables = {
      EDITOR = "nvim";
    };
    packages = with pkgs; [
      gh
      git
      gcc
      nixpkgs-fmt
    ];
  };

  programs = {
    home-manager.enable = true;
  };
}
