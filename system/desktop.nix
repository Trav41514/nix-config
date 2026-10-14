{ pkgs, ... }:
{
  services = {
    xserver.enable = true;
    desktopManager.plasma6.enable = true;
    displayManager.plasma-login-manager.enable = true;
  };

  environment.systemPackages = with pkgs; [
    gnome-calculator
    kdePackages.partitionmanager
  ];

  environment.plasma6.excludePackages = with pkgs.kdePackages; [
    konsole   # Terminal
    kate      # Text editor
    qrca      # QR app
    okular    # Document viewer
    elisa     # Music and radio
  ];
}