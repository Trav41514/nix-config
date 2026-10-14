{ pkgs, ... }:
{
  system.stateVersion = "26.05";

  networking.hostName = "workstation";

  environment.systemPackages = with pkgs; [
    wget
    git
    nixd
    htop
    
    # TODO: These are user packages
    vscodium.fhs
    kitty
    wireshark
    filezilla
    steam
    vlc
    handbrake
    audacity
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