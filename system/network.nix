{ config, ... }:
{
  networking.networkmanager.enable = true;

  # My system will never use a mobile broadband adaptor
  networking.modemmanager.enable = false;

  networking.nftables.enable = true;

  networking.firewall.enable = true;
  networking.firewall.backend = "nftables";
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];

  services.avahi.enable = true;

  services.tailscale = {
    enable = true;
    openFirewall = true;
  };
}