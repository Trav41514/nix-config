{ config, pkgs, ... }:
{
  home.stateVersion = "26.05";

  programs.home-manager.enable = true;

  home.username = "dawn";
  home.homeDirectory = "/home/dawn";

  home.packages = with pkgs; [
    nixd
    vscodium.fhs
    kitty
    wireshark
    filezilla
    steam
    vlc
    handbrake
    audacity
  ];

  #imports = [
  #  ./nh.nix
  #  ./sublime-text.nix
  #  ./sublime-merge.nix
  #  ./firefox.nix
  #  ./discord.nix
  #  ./nixdatifier.nix
  #];
}