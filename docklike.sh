#!/bin/sh

# Dependencies
sudo apt install xfce4-dev-tools libstartup-notification0-dev libwnck-3-dev libxfce4ui-2-dev libxfce4panel-2.0-dev

# Build docklike
git clone https://github.com/nsz32/docklike-plugin &&  cd docklike-plugin
./autogen.sh --prefix=/usr/local
make
sudo make install
