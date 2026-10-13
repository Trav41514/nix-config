{ pkgs, ... }:
{
  # 
  nixpkgs.config.permittedInsecurePackages = [
    "openssl-1.1.1w"
  ];

  environment.systemPackages = [
    pkgs.sublime4
  ];
}