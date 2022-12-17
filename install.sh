#! /bin/sh

sudo mv /etc/apt/sources.list /etc/apt/sources.list.bkp
sudo cp /home/$USER/debian-gnome/sources.list /etc/apt/sources.list
sudo apt update && sudo apt -y upgrade

# gnome tweaks
sudo apt install -y gnome-tweaks

# Applications
sudo apt install -y curl git wget axel pip htop neofetch ranger neovim

# mpv
source ~/home/$USER/debian-gnome/mpv.sh

# nerd fonts
source ~/home/$USER/debian-gnome/nerdfonts.sh
