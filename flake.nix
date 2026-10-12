{
  description = "Dawn's Nix configuration";

  nixConfig = {
    extra-experimental-features = [
      "nix-command"
      "flakes"
    ];
  };

  outputs = inputs:
    inputs.flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [
        "x86_64-linux"
      ];
      imports = [
        ./hosts
      ];
    };

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-26.05";
    flake-parts.url = "github:hercules-ci/flake-parts";
    nixos-hardware.url = "github:nixos/nixos-hardware";
    #sc0710.url = "github:Nakildias/sc0710";
  };
}