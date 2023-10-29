{ config, pkgs, unstable, ... }:

# This defines packages that should only be installed on a system with VR.

{
  home.packages = [
    # # Adds the 'hello' command to your environment. It prints a friendly
    # # "Hello, world!" when run.
    # pkgs.hello
      pkgs.lighthouse-steamvr # Power management for SteamVR lighthouses
      unstable.BeatSaberModManager
  ];
}
