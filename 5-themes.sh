#!/bin/bash

## check for sudo/root
if ! [ $(id -u) = 0 ]; then
  echo "This script must run with sudo, try again..."
  exit 1
fi

# Get username and make buliddr
username=$(id -u -n 1000)
builddr=$(pwd)

# dependencies
nala install -y gtk2-engines-murrine gtk2-engines-pixbuf

# dconf editor
nala install -y dconf-editor

# Arc theme
nala install -y arc-theme

# Materia theme
nala install -y materia-gtk-theme

# mint themes
nala install -y /home/$username/debian-de/deb/*.deb

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
nala install -y papirus-icon-theme

# Papirus folder
wget -qO- https://git.io/papirus-folders-install | sh
papirus-folders -C yaru --theme Papirus-Dark

# kde apps theme fix
nala install -y qt5-style-plugins
cp environment /etc/environment

# libreoffice sifr theme
nala install -y libreoffice-style-sifr
