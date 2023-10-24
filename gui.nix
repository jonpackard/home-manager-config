{ config, pkgs, unstable, ... }:

# This defines packages that should only be installed on a system with a GUI.

{
  home.packages = [
    # # Adds the 'hello' command to your environment. It prints a friendly
    # # "Hello, world!" when run.
    # pkgs.hello
      pkgs.firefox
      pkgs.remmina
      pkgs.bitwarden
      pkgs.cryptomator
      pkgs.element
      pkgs.notepadqq
      pkgs.vscodium
      pkgs.element-desktop
      unstable.prusa-slicer
      unstable.cura
      unstable.blender
      pkgs.freecad
      pkgs.appimage-run
      pkgs.anydesk
      pkgs.discord
      pkgs.jellyfin-mpv-shim
      pkgs.vlc
      pkgs.lighthouse-steamvr # Power management for SteamVR lighthouses
      unstable.prismlauncher
      pkgs.virt-manager
  ];
}
