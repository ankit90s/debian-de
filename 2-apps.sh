#!/bin/bash

## check for sudo/root
if ! [ $(id -u) = 0 ]; then
  echo -e "\e[1;31m Please run as sudo or root \e[0m"
  exit 1
fi

# Get username and make buliddr
username=$(id -u -n 1000)
builddr=$(pwd)

# Applications and utilities
echo -e "\e[1;32m Installing apps and utilities \e[0m"
apt install -y git pip ranger cmatrix espeak ncdu translate-shell rsync kdeconnect yt-dlp gpick

# Dictionary
echo -e "\e[1;32m Installing gnome-dictionary \e[0m"
apt install -y gnome-dictionary

# Torrent Management
echo -e "\e[1;32m Installing torrent-client/transmission \e[0m"
apt install -y transmission

# sensors
echo -e "\e[1;32m Installing sensors \e[0m"
apt install -y lm-sensors

# Archiving tools
echo -e "\e[1;32m Installing archiving tools \e[0m"
apt install -y zip unzip 7zip

# search applications
echo -e "\e[1;32m Installing rofi and dmenu \e[0m"
apt install -y rofi dmenu

# System Monitors
echo -e "\e[1;32m Installing conky nefetch htop \e[0m"
apt install -y conky neofetch htop

# Calculator
echo -e "\e[1;32m Installing calculator \e[0m"
apt install -y qalculate-gtk

# Download Managers
echo -e "\e[1;32m Installing download managers \e[0m"
apt install -y curl wget axel aria2

# redshift
echo -e "\e[1;32m Installing redshift \e[0m"
apt install -y redshift

# mintstick
echo -e "\e[1;32m Installing mint stick \e[0m"
apt install -y mintstick

# Text editor
echo -e "\e[1;32m Installing geany, micro and neovim \e[0m"
apt install -y geany micro neovim
git clone https://github.com/VundleVim/Vundle.vim.git /home/$username/.vim/bundle/Vundle.vim

# Media Player
apt install -y mpv

# Install plank dock
echo -e "\e[1;32m Installing Plank \e[0m"
apt install -y plank

# ani-cli
echo -e "\e[1;32m Installing ani-cli for anime lovers \e[0m"
git clone "https://github.com/pystardust/ani-cli.git"
install ani-cli/ani-cli /usr/local/bin
rm -rf ani-cli

# Goolge Chrome
echo -e "\e[1;32m Installing google chrome \e[0m"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
apt install -y ./google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb

# Docklike
echo -e "\e[1;32m Installing docklike plugin for xfce \e[0m"
apt install -y xfce4-dev-tools libstartup-notification0-dev libwnck-3-dev libxfce4ui-2-dev libxfce4panel-2.0-dev
cd /home/$username
git clone https://github.com/nsz32/docklike-plugin &&  cd docklike-plugin
./autogen.sh
make
make install
cd /home/$username && rm -rf docklike-plugin
cd $builddr

# fast-cli
echo -e "\e[1;32m Installing fast-cli for Internet speed test \e[0m"
wget https://github.com/ddo/fast/releases/download/v0.0.4/fast_linux_amd64 -O fast
chmod +x fast
mv fast /usr/local/bin

# libreoffice install
echo -e "\e[1;32m Installing libreoffice and its themes \e[0m"
apt install -y libreoffice-gtk3 libreoffice-impress libreoffice-calc libreoffice-writer
apt install -y libreoffice-style*

# config files
echo -e "\e[1;32m Copying config files \e[0m"
cd /home/$username
git clone https://github.com/ankit90s/dotconfig && cd dotconfig
cp -r * /home/$username/.config
chown -R $username:$username /home/$username
cd $builddr

echo 
echo -e "\e[1;32m Rebooting now \e[0m"
sleep 2s
reboot
