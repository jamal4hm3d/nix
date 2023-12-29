{config, pkgs, lib, ...}:

{
  programs.hyprland.enable = true;

  services.blueman.enable = true;
  programs.nm-applet.enable =true;
  environment.systemPackages = with pkgs; [
    waybar
    rofi-wayland
    dunst
    libsForQt5.polkit-kde-agent
    xdg-desktop-portal-hyprland
    pavucontrol
    libsForQt5.dolphin
    qt6.qtwayland
    libsForQt5.qt5.qtwayland
    libsForQt5.qt5.qtquickcontrols2
    libsForQt5.qt5.qtquickcontrols
    libsForQt5.qt5.qtgraphicaleffects
    swww
    swaylock-effects
    wlogout
    grimblast
    hyprpicker
    slurp
    swappy
    cliphist
    libsForQt5.qt5.qtimageformats
    libsForQt5.ffmpegthumbs
    libsForQt5.kde-cli-tools
    brightnessctl
    pamixer
    nwg-look
    libsForQt5.qtstyleplugin-kvantum
    libsForQt5.qt5ct
  ];

}
