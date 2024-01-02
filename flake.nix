{
  description = "Home Manager configuration of jonathan";

  inputs = {
    # Specify the source of Home Manager and Nixpkgs.
    nixpkgs.url = "github:nixos/nixpkgs/nixos-23.11";
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";         # Unstable Nix Packages
    nixpkgs-nixos-22-11.url = "github:nixos/nixpkgs/nixos-22.11";         # Nix Packages from 22.11 release

    home-manager = {
      url = "github:nix-community/home-manager/release-23.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs @ { self, nixpkgs, nixpkgs-unstable, home-manager, nixpkgs-nixos-22-11, ... }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
      unstable = import nixpkgs-unstable {
        inherit system;
        config.allowUnfree = true;
      };
      nixos-22-11 = import nixpkgs-nixos-22-11 {
        inherit system;
        config.allowUnfree = true;
      };
    in {
      homeConfigurations."jonathan" = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        # Specify your home configuration modules here, for example,
        # the path to your home.nix.
        modules = [ ./home.nix ];

        # Optionally use extraSpecialArgs
        # to pass through arguments to home.nix
        extraSpecialArgs = {
        inherit unstable;
        inherit nixos-22-11;

        };
      };
      
      homeConfigurations."jonathan@gui" = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        # Specify your home configuration modules here, for example,
        # the path to your home.nix.
        modules = [
          ./home.nix
          ./gui.nix
        ];

        # Optionally use extraSpecialArgs
        # to pass through arguments to home.nix
        extraSpecialArgs = {
        inherit unstable;
        inherit nixos-22-11;
        };
      };

      homeConfigurations."jonathan@vr" = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        # Specify your home configuration modules here, for example,
        # the path to your home.nix.
        modules = [
          ./home.nix
          ./gui.nix
          ./vr.nix
        ];

        # Optionally use extraSpecialArgs
        # to pass through arguments to home.nix
        extraSpecialArgs = {
        inherit unstable;
        inherit nixos-22-11;
        };
      };
    };
}
