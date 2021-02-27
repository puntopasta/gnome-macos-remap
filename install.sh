#!/bin/bash

# Install Autokey repository
mkdir -p ~/.config/autokey/data
cp -r ./gnome-macos-phrases ~/.config/autokey/data/

gsettings set org.gnome.settings-daemon.plugins.media-keys volume-mute "['XF86Launch5']"
gsettings set org.gnome.settings-daemon.plugins.media-keys volume-down "['XF86Launch6']"
gsettings set org.gnome.settings-daemon.plugins.media-keys volume-up "['XF86Launch7']"
