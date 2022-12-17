#! /bin/sh

sudo mv /etc/apt/sources.list /etc/apt/sources.list.bkp
sudo cp /home/$USER/debian-gnome/sources.list /etc/apt/sources.list
sudo apt update && sudo apt upgrade -y

# gnome tweaks
sudo apt install -y gnome-tweaks

# Applications
sudo apt install -y curl git wget axel pip htop neofetch ranger rofi neovim

# mpv
source ~/home/$USER/debian-gnome/mpv.sh

# nerd fonts
source ~/home/$USER/debian-gnome/nerdfonts.sh

# copy scripts folder
cp -r /home/$USER/debian-gnome/scripts /home/$USER/

# copy config files
cp -r /home/$USER/debian-gnome/dotconfig/* /home/$USER/.config/
