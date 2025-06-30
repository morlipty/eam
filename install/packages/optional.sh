#!/bin/bash

Steam=(
  "vulkan-intel"
  "lib32-vulkan-intel"
  "steam"
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
