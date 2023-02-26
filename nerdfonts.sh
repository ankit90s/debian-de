#!/bin/bash

## check for sudo/root
if ! [ $(id -u) = 0 ]; then
  echo "This script must run with sudo, try again..."
  exit 1
fi

cd /tmp
fonts=( 
"FiraCode" 
"JetBrainsMono" 
"RobotoMono" 
"UbuntuMono"
)

for font in ${fonts[@]}
do
    wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/$font.zip
    unzip $font.zip -d /usr/share/fonts/$font/
    rm $font.zip
done
fc-cache -fv
