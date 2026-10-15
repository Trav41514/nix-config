{ inputs, config, pkgs, ... }:
{
  home.stateVersion = "26.05";

  home.username = "dawn";
  home.homeDirectory = "/home/dawn";

  home.packages = with pkgs; [
    nixd
    vscodium.fhs
    sublime4
    sublime-merge
    kitty
    wireshark
    filezilla
    steam
    vlc
    handbrake
    audacity
    polychromatic
    ghidra
  ];

  imports = [
    inputs.nixdatifier.homeManagerModules.default
    inputs.nixcord.homeModules.nixcord
  ];

  programs.home-manager.enable = true;

  programs.bash.enable = true;

  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "Dawn";
        email = "waking_dawn@outlook.com";
      };
    };
  };

  programs.nixdatifier = {
    enable = true;
    autostart = true;
  };

  programs.nh = {
    enable = true;
    clean.enable = true;
    clean.extraArgs = "--keep 5 --keep-since 3d";
    flake = "/home/dawn/Projects/nix-config";
  };

  programs.neovim = {
    enable = true;
    viAlias = true;
    vimAlias = true;
  };

  programs.firefox.enable = true;

  programs.nixcord = {
    enable = true;
    user = "dawn";
    discord = {
      enable = true;
      openASAR.enable = true;
      vencord.enable = true;
      krisp.enable = true;
    };
    config.plugins = {
      betterGifPicker.enable = true;
      characterCounter.enable = true;
      clearUrls.enable = true;
      crashHandler.enable = true;
      fixImagesQuality.enable = true;
      fixYoutubeEmbeds.enable = true;
      iLoveSpam.enable = true;
      memberCount.enable = true;
      messageLogger.enable = true;
      readAllNotificationsButton.enable = true;
      relationshipNotifier.enable = true;
      shikiCodeblocks.enable = true;
      showHiddenThings.enable = true;
      userMessagesPronouns.enable = true;
      usrbg.enable = true;
      volumeBooster.enable = true;
      webScreenShareFixes.enable = true;
      youtubeAdblock.enable = true;
    };
  };
}