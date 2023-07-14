#!/bin/bash

## check for sudo/root
if ! [ $(id -u) = 0 ]; then
  echo "This script must run with sudo, try again..."
  exit 1
fi

# Get username and make buliddr
username=$(id -u -n 1000)
builddr=$(pwd)

# Restricted extras
nala install -y ttf-mscorefonts-installer rar unrar libavcodec-extra gstreamer1.0-libav gstreamer1.0-plugins-ugly gstreamer1.0-vaapi

# Network File Tools/System Events
nala install -y dialog mtools dosfstools avahi-daemon acpi acpid gvfs-backends locate mtp-tools

systemctl enable avahi-daemon
systemctl enable acpid

nala install -y mesa-vulkan-drivers libvulkan1 vulkan-tools vulkan-validationlayers

# install build tools
nala install -y build-essential linux-headers-$(uname -r) intel-microcode

echo 
echo Rebooting Now
echo

reboot
