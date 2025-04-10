#!/bin/bash

# Установка пакетов
yay -S \
  btrfs-assistant \
  grub-btrfs \
  snap-pac \
  snap-pac-grub \
  snapper

# Создание конфигурации для корневого раздела
sudo snapper -c root create-config /

# Настройка параметров снапшотов
sudo snapper -c root set-config "TIMELINE_CREATE=yes" "TIMELINE_CLEANUP=yes"

# Включение и запуск служб
sudo systemctl enable --now grub-btrfsd.service
sudo systemctl enable --now snapper-boot.timer
sudo systemctl enable --now snapper-cleanup.timer
sudo systemctl enable --now snapper-timeline.timer

echo "Настройка Snapper завершена!"
