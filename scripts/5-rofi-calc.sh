#! /bin/sh

sudo apt -y install qalc rofi-dev automake autoconf libtool libtool-bin rofi

git clone https://github.com/svenstaro/rofi-calc.git
cd rofi-calc
autoreconf -i
mkdir build && cd build
../configure
make
sudo make install

cd ../ && cd ../ && rm -rf rofi-calc

echo
printf "\e[1;32m Setup Finished! Thanks you.\e[0m\n"
