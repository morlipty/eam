#!/bin/bash

if command -v yay >/dev/null; then
  echo "yay is available"
else
  git clone https://aur.archlinux.org/yay.git
  cd yay || exit
  makepkg -si
  cd ..
  rm -rf yay
fi
