#!/bin/bash

# Установка пакетов
yay -S \
  snapper \
  btrfs-assistant \
  grub-btrfs \
  snap-pac \
  snap-pac-grub

# Создание конфигурации для корневого раздела
sudo snapper -c root create-config /

# Настройка параметров снапшотов
sudo snapper -c root set-config "TIMELINE_CREATE=yes" "TIMELINE_CLEANUP=yes"

# Включение и запуск служб
sudo systemctl enable --now snapper-timeline.timer
sudo systemctl enable --now snapper-cleanup.timer
sudo systemctl enable --now grub-btrfs.path

echo "Настройка Snapper завершена!"
