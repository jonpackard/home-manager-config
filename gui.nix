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
      #pkgs.fortune
      #pkgs.neofetch
      pkgs.vlc
      pkgs.lighthouse-steamvr # Power management for SteamVR lighthouses
      unstable.prismlauncher

    # # It is sometimes useful to fine-tune packages, for example, by applying
    # # overrides. You can do that directly here, just don't forget the
    # # parentheses. Maybe you want to install Nerd Fonts with a limited number of
    # # fonts?
    # (pkgs.nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })

    # # You can also create simple shell scripts directly inside your
    # # configuration. For example, this adds a command 'my-hello' to your
    # # environment:
    # (pkgs.writeShellScriptBin "my-hello" ''
    #   echo "Hello, ${config.home.username}!"
    # '')
  ];

}
