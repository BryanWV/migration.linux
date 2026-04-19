#!/bin/bash

###

# Bash file to download most used packages

###

sudo apt update -y && sudo apt upgrade -y && sudo apt autoremove -y
sudo apt autoclean -y

sudo apt install -y screenfetch \
copyq \




flatpak \
plasma-discover-backend-flatpak
flatpak remote-add --if-not-exists --user flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install --user -y flathub com.bambulab.BambuStudio \
org.blender.Blender



