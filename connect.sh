#!/bin/bash

# --- Running Browser in the background ---
brightnessctl set 750
brave-browser --ozone-platform=x11 &

# --- System update tasks ---
sudo apt update -y && sudo apt upgrade -y && sudo apt autoremove -y
sudo apt autoclean -y
flatpak update -y

# --- Monitoring loop and ICMP protocol---
while true; do
    upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep "percentage"
    sleep 0.5
    ping -i 1.25 -c 2 8.8.8.8
done
