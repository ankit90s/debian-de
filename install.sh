#! /bin/sh

sudo mv /etc/apt/sources.list /etc/apt/sources.list.bkp
sudo cp /home/$USER/debian-de/sources.list /etc/apt/sources.list
sudo apt update && sudo apt upgrade -y

# gnome tweaks
# sudo apt install -y gnome-tweaks

# Applications and utilities
sudo apt install -y git pip kitty ranger cmatrix espeak ncdu translate-shell rsync kdeconnect yt-dlp

# Archiving tools
sudo apt install -y zip unzip

# EXA file list
# replace default ls command with the following line in .bashrc file
# alias ls = exa --long --icons --group-directories-first color=always
sudo apt install -y exa

# search applications
sudo apt install -y rofi dmenu

# System Monitors
sudo apt install -y conky neofetch htop

# Calculator
sudo apt install -y gnome-calculator

# Download Managers
sudo apt install -y curl wget axel aria2

# Network File Tools/System Events
sudo apt install -y dialog mtools dosfstools avahi-daemon acpi acpid gvfs-backends locate mtp-tools

sudo systemctl enable avahi-daemon
sudo systemctl enable acpid

# redshift
sudo apt install -y redshift

# Arc theme
sudo apt install -y arc-theme

# Text editor
sudo apt install -y neovim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# fonts
sudo apt install -y fonts-indic fonts-noto-color-emoji fonts-ubuntu fonts-roboto fonts-ubuntu

# Material Design Icon Fonts
wget https://github.com/zavoloklom/material-design-iconic-font/releases/download/2.2.0/material-design-iconic-font.zip
sudo unzip material-design-iconic-font.zip -d /usr/share/fonts/
rm -f material-design-iconic-font.zip
fc-cache -fv

# Papirus icon
sudo apt install -y papirus-icon-theme -t bullseye-backports

# Papirus folder
wget -qO- https://git.io/papirus-folders-install | sh
papirus-folders -C green --theme Papirus-Dark

# kde apps theme fix
sudo apt install -y qt5-style-plugins
sudo cp /home/$USER/debian-de/environment /etc

# Restricted extras
sudo apt install -y ttf-mscorefonts-installer rar unrar libavcodec-extra gstreamer1.0-libav gstreamer1.0-plugins-ugly gstreamer1.0-vaapi

# Microsoft fonts
sudo apt install -y fonts-crosextra-carlito fonts-crosextra-caladea

# greenclip
#sudo cp /home/$USER/debian-gnome/dotscripts/greenclip /usr/local/bin

# google chrome setup
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y ./google-chrome-stable_current_amd64.deb
rm -f google-chrome-stable_current_amd64.deb

# copy scripts folder
# cp -r /home/$USER/debian-gnome/scripts /home/$USER/

# libreoffice install
sudo apt install -y libreoffice-gtk3 libreoffice-impress libreoffice-calc libreoffice-writer

# libreoffice sifr theme
sudo curl -s https://raw.githubusercontent.com/rizmut/libreoffice-style-sifr/master/install-sifr.sh | sh

# copy config files
cp -r /home/$USER/debian-de/dotconfig/* /home/$USER/.config/
