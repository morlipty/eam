#!/bin/bash

Fonts=(
  "adobe-source-han-sans-jp-fonts"
  "noto-fonts"
  "noto-fonts-cjk"
  "noto-fonts-emoji"
  "noto-fonts-extra"
  "otf-font-awesome"
  "ttf-font-awesome"
  "ttf-fira-sans"
  "ttf-fira-code"
  "ttf-firacode-nerd"
  "ttf-ms-win11-auto"
)

Intel=(
  "mesa"
  "intel-ucode"
  "thermald"
  "intel-media-driver"
  "libva-intel-driver"
)

IntelTools=(
  "iucode-tool"
  "libva-utils"
  "intel-gpu-tools"
)

KDE=(
  "plasma-meta"
  "dolphin"
  "ark"
  "kwenview"
  "konsole"
  "filelight"
  "ksystemlog"
  "kdeconnect"
  "gucharmap"
  "sshfs"
)

Battery=(
  "power-profiles-daemon"
)

Network=(
  "dnscrypt-proxy"
  "firewalld"
  "iwd"
)

Pacman=(
  "pacman-contrib"
  "rebuild-detector"
  "reflector"
  "expac"
)

System=(
  "os-prober"
  "alsa-utils"
)

Languages=(
  "python-pipx"
  "python-pip"
  "uv"
  "rust"
  "nodejs"
  "npm"
  "luarocks"
  "jdk-openjdk"
  "jdk17-openjdk"
  "jdk21-openjdk"
  "dotnet-sdk"
)

Terminal=(
  "zsh"
  "yazi"
  "kitty"
  "neovim"
  "starship"
  "fastfetch"
)

CliTools=(
  "fd"
  "eza"
  "fzf"
  "zip"
  "bind"
  "unzip"
  "p7zip"
  "wget"
  "rhash"
  "rsync"
  "rclone"
  "zoxide"
  "hwinfo"
  "man-db"
  "ripgrep"
  "thefuck"
  "dmidecode"
  "man-pages"
  "ueberzugpp"
  "github-cli"
  "wl-clipboard"
  "perl-file-mimeinfo"
)

ImageEditing=(
  "gimp"
  "gimp-plugin-gmic"
)

Web=(
  "stremio"
  "vesktop-bin"
  "qbittorrent"
  "freetube-bin"
  "chromium"
  "zen-browser-bin"
  "spotify-launcher"
  "telegram-desktop"
  "ayugram-desktop-bin"
)

Tools=(
  "copyq"
  "scrcpy"
  "qtscrcpy-bin"
  "xournalpp"
  "ventoy-bin"
  "qalculate-qt"
  "rustdesk-bin"
  "localsend-bin"
)

Development=(
  "android-tools"
  "jetbrains-toolbox"
  "visual-studio-code-bin"
)

Install=(
  "${Fonts[@]}"
  "${KDE[@]}"
  "${Battery[@]}"
  "${Network[@]}"
  "${Pacman[@]}"
  "${System[@]}"
  "${Terminal[@]}"
  "${CliTools[@]}"
  "${ImageEditing[@]}"
  "${Development}"
  "${Tools[@]}"
  "${Web[@]}"
  "${Tools[@]}"
  "${Languages[@]}"
)

yay -S --needed "${Install[@]}"
