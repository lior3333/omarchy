#!/bin/bash
# Bootstrap yay (AUR helper)

if ! command -v yay &>/dev/null; then
  echo "Installing yay..."
  sudo pacman -S --needed --noconfirm git base-devel
  git clone https://aur.archlinux.org/yay.bin.git /tmp/yay
  cd /tmp/yay
  makepkg -si --noconfirm
  cd -
  rm -rf /tmp/yay
else
  echo "yay is already installed."
fi
