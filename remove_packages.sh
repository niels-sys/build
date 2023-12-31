#!/bin/bash
# Ubuntu
sudo apt update && sudo apt upgrade -y &&

# Remove Thunderbird
sudo apt-get purge -y thunderbird*

# Remove LibreOffice
sudo apt-get remove -y libreoffice*
sudo apt-get clean
sudo apt-get autoremove -y

# Remove video-related scopes
sudo apt-get remove -y unity-scope-video-remote unity-scope-musicstores

# Remove Unity Shopping Lens
sudo apt-get remove -y unity-lens-shopping

# Clear downloaded package lists
sudo rm -rf /var/lib/apt/lists/*

# Remove Ubuntu One data
rm -rf ~/.local/share/ubuntuone
rm -rf ~/.cache/ubuntuone
rm -rf ~/.config/ubuntuone

# Remove Ubuntu One client packages
sudo apt-get purge -y ubuntuone-client python-ubuntuone-storage*

# Remove whoopsie purge config files
sudo dpkg --remove whoopsie
sudo dpkg --purge whoopsie
sudo rm -r -f /var/lib/whoopsie

# Clean the package cache
sudo apt-get autoclean -y
sudo apt-get autoremove -y

# Resetting an out-of-range resolution
rm ~/.config/monitors.xml
