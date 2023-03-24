#!/bin/bash

## check for sudo/root
if ! [ $(id -u) = 0 ]; then
  echo "This script must run with sudo, try again..."
  exit 1
fi

# Get username and make buliddr
username=$(id -u -n 1000)
builddr=$(pwd)

# Applications and utilities
apt install -y git pip ranger cmatrix espeak ncdu translate-shell rsync kdeconnect yt-dlp gpick

# Torrent Management
apt install -y transmission

# sensors
apt install -y lm-sensors hddtemp

# Archiving tools
apt install -y zip unzip

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
git clone https://github.com/VundleVim/Vundle.vim.git /home/$username/.vim/bundle/Vundle.vim

# Media Player
apt install -y mpv

# Install plank dock
# apt install -y plank

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

# Docklike
apt install -y xfce4-dev-tools libstartup-notification0-dev libwnck-3-dev libxfce4ui-2-dev libxfce4panel-2.0-dev
cd /home/$username
git clone https://github.com/nsz32/docklike-plugin &&  cd docklike-plugin
./autogen.sh
make
make install
cd /home/$username && rm -rf docklike-plugin
cd $builddr

# Alacritty Dependencies
apt install -y cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3

# libreoffice install
apt install -y libreoffice-gtk3 libreoffice-impress libreoffice-calc libreoffice-writer

# libreoffice sifr theme
curl -s https://raw.githubusercontent.com/rizmut/libreoffice-style-sifr/master/install-sifr.sh | sh

# install nvidia detect
apt install -y nvidia-detect

# config files
cd /home/$username
git clone https://github.com/ankit90s/dotconfig && cd dotconfig
cp -r * /home/$username/.config
chown -R $username:$username /home/$username
cd $builddr

# install build tools
apt install -y build-essential linux-headers-$(uname -r)
