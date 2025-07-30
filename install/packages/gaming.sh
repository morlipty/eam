#!/bin/bash

Steam=(
  "vulkan-intel"
  "lib32-vulkan-intel"
  "steam"
)

Wine=(
  "wine"
  "wine-mono"
  "wine-gecko"
  "winetricks"
)

Libs=(
  "gamemode"
  "lib32-gamemode"
  "lib32-gnutils"
  "vkd3d"
  "lib32-vkd3d"
  "gvfs"
  "python-pefile"
  "python-protobuf"
  "umu-launcher"
)

Lutris=(
  "lutris"
  "gamescope"
  "mangohud"
)

yay -S --needed --noconfirm "${Wine[@]}"
