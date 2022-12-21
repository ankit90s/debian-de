#! /bin/sh

sudo mv /etc/apt/sources.list /etc/apt/sources.list.bkp
sudo cp /home/$USER/debian-gnome/sources.list /etc/apt/sources.list
sudo apt update && sudo apt upgrade -y

# gnome tweaks
# sudo apt install -y gnome-tweaks

# Applications
sudo apt install -y curl git wget axel aria2 pip htop kitty neofetch ranger rofi cmatrix espeak ncdu translate-shell rsync exa

# Text editor
sudo apt install -y neovim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# fonts
sudo apt install -y fonts-indic fonts-noto-color-emoji

# Material Design Icon Fonts
wget https://github.com/zavoloklom/material-design-iconic-font/releases/download/2.2.0/material-design-iconic-font.zip
sudo unzip material-design-iconic-font.zip -d /usr/share/fonts/
rm -f material-design-iconic-font.zip
fc-cache -fv

# Papirus icon
sudo apt install -y papirus-icon-theme -t bullseye-backports 

# kde apps theme fix
sudo apt install -y qt5-style-plugins
sudo cp /home/$USER/debian-gnome/environment /etc

# greenclip
sudo cp /home/$USER/debian-gnome/dotscripts/greenclip /usr/local/bin

# copy scripts folder
cp -r /home/$USER/debian-gnome/scripts /home/$USER/

# copy config files
cp -r /home/$USER/debian-gnome/dotconfig/* /home/$USER/.config/
