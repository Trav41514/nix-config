{ pkgs, ... }:
{
  system.stateVersion = "26.05";

  networking.hostName = "workstation";

  environment.systemPackages = with pkgs; [
    wget
    git
    htop
    neovim
  ];

  imports = [
    ../../system/nix.nix
    ../../system/common.nix
    ../../system/boot.nix
    ../../system/network.nix
    ../../system/desktop.nix
    ../../system/video.nix
    ../../system/audio.nix

    ../../services/ssh-server.nix
  ];
}