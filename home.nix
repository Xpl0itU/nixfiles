{ pkgs, ... }:

{
  home.username = "samuel";
  home.homeDirectory = "/home/samuel";

  programs.home-manager.enable = true;
  home.stateVersion = "22.11";

  nixpkgs.config.allowUnfree = true;
  
  home.packages = with pkgs; [
    ungoogled-chromium
    moonlight-qt
    vscode
    discord
    gnomeExtensions.dash-to-dock
    gnomeExtensions.appindicator
  ];

  dconf.settings = {
    "org/gnome/desktop/wm/preferences" = {
      button-layout = ":minimize,maximize,close";
    };
    
    "org/gnome/shell" = {
      favorite-apps = [
        "chromium-browser.desktop"
        "org.gnome.Nautilus.desktop"
        "org.gnome.Terminal.desktop"
        "com.moonlight_stream.Moonlight.desktop"
        "code.desktop"
        "discord.desktop"
      ];
    };

    "org/gnome/desktop/interface" = {
      show-battery-percentage = true;
    };

    "org/gnome/shell" = {
      disable-user-extensions = false;

      enabled-extensions = [
        "appindicatorsupport@rgcjonas.gmail.com"
        "dash-to-dock@micxgx.gmail.com"
      ];
    };
  };

  programs.git = {
    enable = true;
    userName  = "Xpl0itU";
    userEmail = "24777100+Xpl0itU@users.noreply.github.com";
  };
}
