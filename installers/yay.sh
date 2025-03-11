#!/bin/bash

mkdir -p /tmp/yay
cd /tmp/yay

sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
