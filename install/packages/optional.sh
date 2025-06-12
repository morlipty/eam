#!/bin/bash

Audio=(
  "pipewire"
  "pipewire-pulse"
  "pipewire-alsa"
  "pipewire-jack"
  "pipewire-audio"
  "sof-firmware"
  "wireplumber"
)

Wine=(
  "wine-staging"
  "wine-gecko"
  "wine-mono"
  "winetricks"
  "samba"
  "vulkan-tools"
  "lib32-vulkan-intel"
  "lib32-mesa"
  "lib32-gnutls"
  "lib32-mpg123"
  "lib32-giflib"
  "lib32-pipewire"
  "lib32-pipewire-jack"
  "lutris"
)

Steam=(
  "lib32-vulkan-intel"
  "lib32-vulkan-icd-loader"
  "vulkan-intel"
  "vulkan-icd-loader"
)

VirtualBox=(
  "virtualbox"
  "virtualbox-guest-iso"
  "virtualbox-guest-utils-nox"
  "virtualbox-host-modules-arch"
)

if gum confirm "Do you want to install audio"; then
  echo -e "${GREEN}"
  figlet -f smslant "Audio"
  echo -e "${NONE}"
  yay -S --needed --noconfirm "${Audio[@]}"
fi

if gum confirm "Do you want to install wine"; then
  echo -e "${GREEN}"
  figlet -f smslant "Wine"
  echo -e "${NONE}"
  yay -S --needed --noconfirm "${Wine[@]}"
fi

if gum confirm "Do you want to install VirtualBox"; then
  echo -e "${GREEN}"
  figlet -f smslant "VirtualBox"
  echo -e "${NONE}"
  yay -S --needed "${VirtualBox[@]}"
fi
