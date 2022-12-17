#! /bin/sh

sudo apt -y install xclip xdotool rofi-dev automake autoconf libtool libtool-bin rofi

git clone https://github.com/Mange/rofi-emoji.git
cd rofi-emoji
autoreconf -i
mkdir build && cd build/
../configure
make
sudo make install
cd ../ && cd ../ && rm -rf rofi-emoji

echo
printf "\e[1;32m Setup Finished! Thanks you.\e[0m\n"
