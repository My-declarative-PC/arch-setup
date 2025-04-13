#!/bin/bash

# Rofi
yay -S \
    rofi \
    rofi-greenclip \
    rofi-bluetooth \
    rofi-calc \
    rofimoji

mkdir -p /tmp/ronema
git clone --depth 1 --branch master https://github.com/P3rf/rofi-network-manager.git
cd rofi-network-manager

sudo bash setup.sh install
