{ pkgs, ... }:
{
  system.stateVersion = "26.05";

  boot.kernelPackages = pkgs.linuxPackages_latest;

  networking.hostName = "workstation";

  environment.systemPackages = with pkgs; [
    wget
    git
    htop
    neovim
    openrazer-daemon
    lact
  ];

  nixpkgs.config.permittedInsecurePackages = [
    "openssl-1.1.1w"
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