{ pkgs, ... }:
{
  hardware.graphics = {
    extraPackages = with pkgs; [
      libva
      libva-vdpau-driver
      libvdpau-va-gl
    ];
    extraPackages32 = with pkgs.pkgsi686Linux; [
      libva-vdpau-driver
      libvdpau-va-gl
    ];
  };
}