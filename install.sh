#!/bin/bash

# Flip Control and Command (Super) keyboard keys
if [ ! -f /usr/share/X11/xkb/symbols/pc.bak ]; then
  sudo cp /usr/share/X11/xkb/symbols/pc /usr/share/X11/xkb/symbols/pc.bak
else
  sudo cp /usr/share/X11/xkb/symbols/pc.bak /usr/share/X11/xkb/symbols/pc
  sudo sed -i 's/<LCTL> {\t\[ Control_L/<LCTL> {\t\[ Super_L/' /usr/share/X11/xkb/symbols/pc
  sudo sed -i 's/<LWIN> {\t\[ Super_L/<LWIN> {\t\[ Control_L/' /usr/share/X11/xkb/symbols/pc
  sudo sed -i 's/<RCTL> {\t\[ Control_R/<RCTL> {\t\[ Super_R/' /usr/share/X11/xkb/symbols/pc
  sudo sed -i 's/<RWIN> {\t\[ Super_R/<RWIN> {\t\[ Control_R/' /usr/share/X11/xkb/symbols/pc
fi

# Install Autokey repository
mkdir -p ~/.config/autokey/data
cp -r ./gnome-macos-phrases ~/.config/autokey/data/
