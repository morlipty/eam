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

KDE=(
  "plasma-meta"
  "dolphin"
  "ffmpegthumbs"
  "ark"
  "gwenview"
  "konsole"
  "filelight"
  "ksystemlog"
  "kdeconnect"
  "kdialog"
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
  "net-tools"
  "fwupd"
)

Languages=(
  "python-pipx"
  "python-pip"
  "npm"
  "luarocks"
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
  "unrar"
  "p7zip"
  "wget"
  "rhash"
  "rclone"
  "zoxide"
  "man-db"
  "thefuck"
  "man-pages"
  "ueberzugpp"
  "github-cli"
  "perl-file-mimeinfo"
)

ImageEditing=(
  "gimp"
  "gimp-plugin-gmic"
)

Web=(
  "qbittorrent"
  "chromium"
  "speech-dispatcher"
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
  "${Intel[@]}"
  "${Audio[@]}"
  "${KDE[@]}"
  "${Battery[@]}"
  "${Network[@]}"
  "${Pacman[@]}"
  "${System[@]}"
  "${Languages[@]}"
  "${Terminal[@]}"
  "${CliTools[@]}"
  "${ImageEditing[@]}"
  "${Web[@]}"
  "${Tools[@]}"
  "${Development[@]}"
)

sudo pacman -S --needed "${Install[@]}"
