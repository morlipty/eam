#!/bin/bash

#figlet and gum
sudo pacman -S --needed --noconfirm figlet gum

chmod a+x ./scripts/*
chmod a+x ./packages/*

./scripts/yay.sh
./packages/system.sh
./packages/optional.sh
./scripts/services.sh
