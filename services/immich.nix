{ ... }:
{
  services.immich = {
    enable = true;
    openFirewall = true;
    machine-learning.enable = false;
    mediaLocation = "/var/lib/immich";
  };

  # GPU acceleration
  users.users.immich.extraGroups = [
    "video"
    "render"
  ];
  services.immich.accelerationDevices = ["/dev/dri/renderD128"];
}