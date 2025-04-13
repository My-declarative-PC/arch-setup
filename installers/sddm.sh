#!/bin/bash

yay -S catppuccin-sddm-theme-mocha sddm

sudo systemctl enable sddm.service
