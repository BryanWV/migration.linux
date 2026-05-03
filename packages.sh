#!/bin/bash

###

# Bash file to download most used packages

###

sudo apt update -y && sudo apt upgrade -y && sudo apt autoremove -y
sudo apt autoclean -y

### Installing packages from apt

sudo apt install -y screenfetch \
copyq \
obs-studio \
gparted \
htop \
cmatrix \
freecad \
torbrowser-launcher \
############## TODO: Add docker steps
#https://docs.docker.com/engine/install/debian/#prerequisites
flatpak
## plasma-discover-backend-flatpak
### I don't usually use GUI for flatpak

flatpak remote-add --if-not-exists --user flathub https://dl.flathub.org/repo/flathub.flatpakrepo



### Reboot system at this point 

echo "The System needs to be rebooted to apply changes !!!"



sudo reboot
### Installing packages from Flaphub
flatpak install --user -y flathub com.bambulab.BambuStudio \
org.blender.Blender \
cc.arduino.IDE2 \ ##Latest Arduino version
# Creality: Download manually .flatpak --user and install it
# https://github.com/CrealityOfficial/CrealityPrint/releases/tag/v7.1.0

org.DolphinEmu.dolphin-emu \
org.fedoraproject.MediaWriter 
### Other programs need to be installed manually

#QGroundControl: https://docs.qgroundcontrol.com/master/en/qgc-user-guide/getting_started/download_and_install.html
sudo usermod -aG dialout $USER

### Manual setup
###
## TODO: Add backports
###TODO: Install KiCAD
### TODO: Add Visual Studio Code: https://wiki.debian.org/VisualStudioCode
# Add extensions: material icon theme
# C/C++
# Live server
# .NET install tool
# C#
# cmake
# PlatformIO
# regex previewer
# TODO tree
# vscode-pdf
##### Color theme: Dark High Contrast


## TODO: Add unity
### TODO: Add Anydesk
### TODO: Anydesk
### TODO: Brave browser




#### Manual setup
# sudo nano /etc/bluetooth/main.conf
## Add:
#Privacy = device
#JustWorksRepairing = always
#FastConnectable = true
#AutoEnable = true

####
