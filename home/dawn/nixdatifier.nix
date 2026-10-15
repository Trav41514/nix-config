{ inputs, ... }:
{
  imports = [
    inputs.nixdatifier.nixosModules.default
  ];

  programs.nixdatifier = {
    enable = true;
    autostart = true;
  };
}