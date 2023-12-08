{ pkgs, inputs, ... }:

{
  # List packages installed in system profile. To search, run:
  # $ nix search wget # LOL ok but how can I make it work?
  environment.systemPackages = with pkgs; [
    # rust-bin.stable.latest.default

    firefox # Browsing the web
    brave # Another way of browsing the web
    tdesktop # Telegram
    discord # Discord
    wl-clipboard # wl-copy, wl-paste, required for clipboard to work in neovim
    ffmpeg-full # has ffplay
    python3 # calculator
    zoom-us
    vlc

    monaspace # new font


    # Command line
    gh # github
    git # gud
    lazygit # Better git?
    eza # ls++
    bat # cat++
    alacritty # terminal
    curl # pretty sure its installed by default but anyway
    wget # Downloading things from command line
    neofetch # BTW
    tokei # Scan project languages and lines of code
    ripgrep # Grep the rip
    fd # User-friendly find
    unzip
    zip
    moreutils # sponge
    psmisc # fuser
    psutils
    ntfs3g # to break windows from linux YEP
    libguestfs-with-appliance # to mount hyper-v vm data
    file

    age # encryption
    yt-dlp # download YouTube

    nil # nix language server
    nixpkgs-fmt # nix formatter

    glances # System monitoring

    helix # For when I'm done with neovim
    tmux
    neovim
    vscode-fhs
    dua # disk usage analyzer
    any-nix-shell # Keep shell when in nix-shell (nix-shell is outdated tho so I should use smth else?)


    audacity # for fish sound effects
  ];

  fonts.packages = with pkgs; [
    (nerdfonts.override { fonts = [ "FiraCode" "JetBrainsMono" ]; })
  ];

  i18n.inputMethod = {
      enabled = "fcitx5";
      fcitx5.addons = with pkgs; [
        fcitx5-gtk
        # fcitx5-qt
        fcitx5-chinese-addons
      ];
    };

  services.upower.enable = true; # checking wireless mouse power for example

  # Enable the OpenSSH daemon.
  services.openssh.enable = true;
}
