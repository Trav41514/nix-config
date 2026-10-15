{ pkgs, ... }:
{
  system.stateVersion = "26.05";

  networking.hostName = "workstation";

  environment.systemPackages = with pkgs; [
    wget
    git
    htop
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

    ../../programs/neovim.nix
    ../../programs/nh.nix

    # TODO: These are personally configured packages
    ../../programs/sublime-text.nix
    ../../programs/sublime-merge.nix
    ../../programs/firefox.nix
    ../../programs/discord.nix
    ../../programs/nixdatifier.nix
  ];
}