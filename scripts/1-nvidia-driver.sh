#! /bin/sh

# update and upgrade
sudo apt update && sudo apt -y upgrade

# nvidia-driver installation
sudo apt -y install nvidia-detect
sudo nvidia-detect
sudo apt -y install nvidia-driver firmware-misc-nonfree

# If you play games, I would also recommend installing support for Vulkan.
packages2="mesa-vulkan-drivers libvulkan1 vulkan-tools vulkan-validationlayers"
sudo apt -y install $packages2

echo
printf "\e[1;32mYou can now reboot! Thanks you.\e[0m\n"
