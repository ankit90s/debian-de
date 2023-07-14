#!/bin/bash

## check for sudo/root
if ! [ $(id -u) = 0 ]; then
  echo "This script must run with sudo, try again..."
  exit 1
fi

# Copy Source file
mv /etc/apt/sources.list /etc/apt/sources.list.bkp
cp sources.list /etc/apt/sources.list
apt update && apt upgrade -y

apt install -y nala

# Get username
username=$(id -u -n 1000)

## Xfce4 installation
nala install -y \
    libxfce4ui-utils \
    thunar \
    xfce4-appfinder \
    xfce4-panel \
    xfce4-pulseaudio-plugin \
    xfce4-whiskermenu-plugin \
    xfce4-session \
    xfce4-settings \
    thunar-archive-plugin \
    xfconf \
    xfdesktop4 \
    xfwm4 \
    xfce4-screenshooter \
    xfce4-power-manager \
    network-manager-gnome \
    xfce4-notifyd \
    xfce4-clipman \
    xfce4-clipman-plugin \
    xfce4-appmenu-plugin \
    xfce4-systemload-plugin

# Other essential packages
nala install -y xterm exa mugshot menulibre nvidia-detect

# Browser
nala install -y firefox-esr

# PDF viewer
nala install -y evince

# image viewer
nala install -y gpicview

# cursor
nala install -y bibata-cursor-theme dmz-cursor-theme

# terminal of choice
nala install -y alacritty

# onboard keyboard
nala install -y onboard

# setup starship
wget https://github.com/starship/starship/releases/latest/download/starship-x86_64-unknown-linux-musl.tar.gz
tar -xvzf starship-x86_64-unknown-linux-musl.tar.gz
mv starship /usr/local/bin
rm starship-x86_64-unknown-linux-musl.tar.gz

# Copy xresources
cp Xresources /home/$username/.Xresources
# cp Xresources ~/.Xresources

# copy bashrc and bash_aliases
cp bashrc /home/$username/.bashrc
cp bash_aliases /home/$username/.bash_aliases

# mkdir
mkdir /home/$username/ISOs

# wallpapers
./4-wallpaper.sh

# pfetch
git clone https://github.com/dylanaraps/pfetch.git
cd pfetch
install pfetch /usr/local/bin

# install slick greeter
nala install -y slick-greeter lightdm-gtk-greeter-settings lightdm-settings numlockx
rm -rf /etc/lightdm
cp -r settings/lightdm /etc

# Copy grub file
rm /etc/default/grub
cp settings/grub /etc/default
sudo update-grub

echo 
echo xfce install complete, Rebooting Now
echo

reboot
