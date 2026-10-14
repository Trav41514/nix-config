{ inputs, ... }:
{
  imports = [
    inputs.nixcord.nixosModules.nixcord
  ];

  programs.nixcord = {
    enable = true;
    user = "dawn";
    discord = {
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