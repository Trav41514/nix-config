{ inputs, ... }:
{
  flake = {
    nixosConfigurations = {
      workstation = inputs.nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          # AMD Ryzen 5900X
          inputs.nixos-hardware.nixosModules.common-cpu-amd
          inputs.nixos-hardware.nixosModules.common-cpu-amd-pstate
          inputs.nixos-hardware.nixosModules.common-cpu-amd-zenpower
          # AMD Radeon RX 9070 XT
          inputs.nixos-hardware.nixosModules.common-gpu-amd
          # NVMe
          inputs.nixos-hardware.nixosModules.common-pc-ssd
          # Elgato 4K60 Pro MK.2
          inputs.sc0710.nixosModules.default

          ./workstation/configuration.nix
          ./workstation/hardware.nix

          ../users/dawn.nix
        ];
        specialArgs = { inherit inputs; };
      };
    };
  };
}