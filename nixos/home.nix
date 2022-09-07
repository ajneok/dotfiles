{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "zonda";
  home.homeDirectory = "/home/zonda";

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "22.05";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  home.packages = [
    pkgs.unzip
    pkgs.htop
    pkgs.curl
    pkgs.wget
    pkgs.whois
    pkgs.screenfetch
    pkgs.spectacle
    pkgs.flameshot

    # TODO: already in system
    # pkgs.vim
    # pkgs.git
    # pkgs.tree
    # pkgs vivaldi
    # pkgs vscode
    # pkgs.spotify
    # pkgs.telegram-desktop
    # pkgs.docker
    # pkgs.xclip
    # pkgs.jq
    # pkgs.chrome
    # pkgs.ranger

    pkgs.python
    pkgs.python3
  ];

}
