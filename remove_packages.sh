#!/bin/bash

# Remove Thunderbird
sudo apt-get purge thunderbird*

# Remove LibreOffice
sudo apt-get remove libreoffice*
sudo apt-get clean
sudo apt-get autoremove

# Remove video-related scopes
sudo apt-get remove unity-scope-video-remote unity-scope-musicstores

# Remove Unity Shopping Lens
sudo apt-get remove unity-lens-shopping

# Clear downloaded package lists
sudo rm -rf /var/lib/apt/lists/*

# Remove Ubuntu One data
rm -rf ~/.local/share/ubuntuone
rm -rf ~/.cache/ubuntuone
rm -rf ~/.config/ubuntuone

# Remove Ubuntu One client packages
sudo apt-get purge ubuntuone-client python-ubuntuone-storage*

# Clean the package cache
sudo apt-get autoclean
