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
nala install -y git pip ranger cmatrix espeak ncdu translate-shell rsync kdeconnect yt-dlp gpick

# Dictionary
nala install -y gnome-dictionary

# Torrent Management
nala install -y transmission

# sensors
nala install -y lm-sensors

# Archiving tools
nala install -y zip unzip p7zip-full

# search applications
nala install -y rofi dmenu

# System Monitors
nala install -y conky neofetch htop

# Calculator
nala install -y qalculate

# Download Managers
nala install -y curl wget axel aria2

# redshift
nala install -y redshift

# mintstick
nala install -y mintstick

# Text editor
nala install -y geany micro neovim
git clone https://github.com/VundleVim/Vundle.vim.git /home/$username/.vim/bundle/Vundle.vim

# Media Player
nala install -y mpv

# Install plank dock
nala install -y plank

# ani-cli
git clone "https://github.com/pystardust/ani-cli.git"
install ani-cli/ani-cli /usr/local/bin
rm -rf ani-cli

# Goolge Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
nala install -y ./google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb

# Docklike
nala install -y xfce4-dev-tools libstartup-notification0-dev libwnck-3-dev libxfce4ui-2-dev libxfce4panel-2.0-dev
cd /home/$username
git clone https://github.com/nsz32/docklike-plugin &&  cd docklike-plugin
./autogen.sh
make
make install
cd /home/$username && rm -rf docklike-plugin
cd $builddr

# fast-cli
wget https://github.com/ddo/fast/releases/download/v0.0.4/fast_linux_amd64 -O fast
chmod +x fast
mv fast /usr/local/bin

# libreoffice install
nala install -y libreoffice-gtk3 libreoffice-impress libreoffice-calc libreoffice-writer
nala install -y libreoffice-style*

# config files
cd /home/$username
git clone https://github.com/ankit90s/dotconfig && cd dotconfig
cp -r * /home/$username/.config
chown -R $username:$username /home/$username
cd $builddr

echo 
echo Rebooting Now
echo

reboot
