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

# Applications and utilities
apt install -y git pip ranger cmatrix espeak ncdu translate-shell rsync kdeconnect yt-dlp gpick

# Torrent Management
apt install -y transmission

# sensors
apt install -y lm-sensors hddtemp

# Archiving tools
apt install -y zip unzip

# EXA file list
# replace default ls command with the following line in .bashrc file
# alias ls = exa --long --icons --group-directories-first color=always
apt install -y exa

# search applications
apt install -y rofi dmenu

# System Monitors
apt install -y conky neofetch htop

# Calculator
apt install -y gnome-calculator

# Download Managers
apt install -y curl wget axel aria2

# Network File Tools/System Events
apt install -y dialog mtools dosfstools avahi-daemon acpi acpid gvfs-backends locate mtp-tools

systemctl enable avahi-daemon
systemctl enable acpid

# redshift
apt install -y redshift

# Arc theme
apt install -y arc-theme

# Text editor
apt install -y neovim geany
# git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# fonts
apt install -y fonts-indic fonts-noto-color-emoji fonts-ubuntu fonts-roboto fonts-ubuntu

# Install plank dock
apt install -y plank

# Material Design Icon Fonts
wget https://github.com/zavoloklom/material-design-iconic-font/releases/download/2.2.0/material-design-iconic-font.zip
unzip material-design-iconic-font.zip -d /usr/share/fonts/
rm -f material-design-iconic-font.zip
fc-cache -fv

# Papirus icon
apt install -y papirus-icon-theme -t bullseye-backports

# Papirus folder
wget -qO- https://git.io/papirus-folders-install | sh
papirus-folders -C yaru --theme Papirus-Dark

# kde apps theme fix
apt install -y qt5-style-plugins
cp environment /etc/environment

# Restricted extras
apt install -y ttf-mscorefonts-installer rar unrar libavcodec-extra gstreamer1.0-libav gstreamer1.0-plugins-ugly gstreamer1.0-vaapi

# Microsoft fonts
apt install -y fonts-crosextra-carlito fonts-crosextra-caladea

# libreoffice install
apt install -y libreoffice-gtk3 libreoffice-impress libreoffice-calc libreoffice-writer

# libreoffice sifr theme
curl -s https://raw.githubusercontent.com/rizmut/libreoffice-style-sifr/master/install-sifr.sh | sh

## Xfce4 installation
apt install -y \
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
    evince \
    gpicview \
    xfce4-power-manager \
    network-manager-gnome \
    xfce4-notifyd \
    xfce4-clipman \
    xfce4-clipman-plugin \
    xfce4-systemload-plugin \
    xfce4-terminal \
    xterm \
    firefox-esr

# Copy xresources
cp Xresources ~/.Xresources

# copy bashrc and bash_aliases
cp bashrc ~/.bashrc
cp bash_aliases ~/.bash_aliases

# copy config files
cp -r dotconfig/* ~/.config/

# install slick greeter
apt install -y slick-greeter lightdm-gtk-greeter-settings lightdm-settings numlockx

echo 
echo xfce install complete, Reboot and Enjoy
echo
