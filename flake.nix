{
  description = "Dawn's Nix configuration";

  outputs = inputs:
    inputs.flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [
        "x86_64-linux"
      ];
      imports = [
        ./hosts
        #shells.nix
        #formatter.nix
      ];
    };

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-parts = {
      url = "github:hercules-ci/flake-parts";
      inputs.nixpkgs-lib.follows = "nixpkgs";
    };
    nixos-hardware = {
      url = "github:nixos/nixos-hardware";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    sc0710 = { 
      url = "github:Nakildias/sc0710";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixcord = {
      url = "github:4evy/nixcord";
      inputs.home-manager.follows = "home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.nixpkgs-ci.follows = "nixpkgs";
      inputs.nixpkgs-packages.follows = "nixpkgs";
    };
    nixdatifier = {
      url = "github:Muddyblack/nixdatifier";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
}