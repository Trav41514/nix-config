# User configuration
- Stylix
- Plasma manager
- Home manager
- NH needs environment variables for conveniance
- Programs to move over:
  * Discord
  * VS Codium
  * Kitty
  * Wireshark
  * Filezilla
  * Steam
  * VLC
  * Handbrake
  * Audacity
  * Firefox
  * NH
  * NixD
  * Nixdatifier

# Global configuration
- Move the user configured programs from the system config to the home config:
  * I want to keep the system side of the config as trimmed down and slim as I can get it

- Stylix:
  * Applied at the system level and seems to be inheritable by the user level?

- NAS mounts:
  * These are samba shares mounted in my home directory on my current system, but it won't do for NixOS
- Samba
  * Resharing the same shares to my tailscale for conveniance
  * Permissions need to be watched

- FTP
  * Infrequent use, but nice to have
  * Something in ``/srv/ftp`` is what I currently use

- Docker services to setup under NixOS:
  * arr
  * QBT
  * Jellyfin
  * Immich
  * Nginx

- lm_sensors:
  * Can only be done on the workstation

- NetworkManager:
  * Creates two users by default that aren't needed:
    (nm-iodine and nm-openvpn)
    Fixing this would involve changing the nixpkg? Feasible for autistic needs?

- WPA supplicant:
  * The systemd services seems to run constantly
  * Under my Arch system: the service starts only on connection to wifi
  * Is there a solution? Am I just that autistic?

- Tailscale:
  * I don't belive the trustedInterface line is required for tailscale in network.nix:22:
    ``networking.firewall.trustedInterfaces = [config.services.tailscale.interfaceName]``
    I have verified that nftables will be managed on the fly by tailscale to do this automatically
    See: https://tailscale.com/docs/reference/netfilter-modes