#!/bin/bash

Fonts=(
  "adobe-source-han-sans-jp-fonts"
  "noto-fonts"
  "noto-fonts-cjk"
  "noto-fonts-emoji"
  "noto-fonts-extra"
  "ttf-font-awesome"
  "ttf-fira-code"
  "ttf-firacode-nerd"
)

Intel=(
  "mesa"
  "intel-ucode"
  "thermald"
  "libvpl"
  "vpl-gpu-rt"
  "vulkan-intel"
  "intel-media-driver"
  "libva-intel-driver"
)

Audio=(
  "pipewire"
  "pipewire-pulse"
  "pipewire-alsa"
  "pipewire-jack"
  "pipewire-audio"
  "sof-firmware"
  "wireplumber"
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
  "gwenview"
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
  "fwupd"
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
  "qbittorrent"
  "chromium"
  "spotify-launcher"
  "telegram-desktop"
)

Tools=(
  "copyq"
  "scrcpy"
  "xournalpp"
  "qalculate-qt"
)

Development=(
  "android-tools"
)

Install=(
  "${Fonts[@]}"
  "${KDE[@]}"
  "${Audio[@]}"
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

sudo pacman -S --needed "${Install[@]}"
