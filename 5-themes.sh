#!/bin/bash

## check for sudo/root
if ! [ $(id -u) = 0 ]; then
  echo "This script must run with sudo, try again..."
  exit 1
fi

# Get username and make buliddr
username=$(id -u -n 1000)
builddr=$(pwd)

# Arc theme
apt install -y arc-theme

# dependencies
apt install -y apt-get install gtk2-engines-murrine gtk2-engines-pixbuf

# dconf editor
apt install -y dconf-editor

# Colloid theme
# git clone https://github.com/vinceliuice/Colloid-gtk-theme.git
# cd Colloid-gtk-theme
# ./install.sh -d /usr/share/themes --tweaks dracula
# ./install.sh -d /usr/share/themes --tweaks nord
# ./install.sh -d /usr/share/themes
# ./install.sh -d /usr/share/themes -t green
# cd .. && rm -rf Colloid-gtk-theme

# Qogir themes
# git clone https://github.com/vinceliuice/Qogir-theme.git
# cd Qogir-theme
# ./install.sh -d /usr/share/themes --tweaks image square round
# cd .. && rm -rf Qogir-theme

# Papirus icon
apt install -y papirus-icon-theme

# Papirus folder
wget -qO- https://git.io/papirus-folders-install | sh
papirus-folders -C yaru --theme Papirus-Dark

# kde apps theme fix
apt install -y qt5-style-plugins
cp environment /etc/environment

# libreoffice sifr theme
apt install -y libreoffice-style-sifr
