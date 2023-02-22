#!/usr/bin/env bash

## configure and install minimal xfce desktop environment

## check for sudo/root
if ! [ $(id -u) = 0 ]; then
  echo "This script must run with sudo, try again..."
  exit 1
fi

apt install -y \
    libxfce4ui-utils \
    thunar \
    xfce4-appfinder \
    xfce4-panel \
    xfce4-pulseaudio-plugin \
    xfce4-whiskermenu-plugin \
    xfce4-session \
    xfce4-settings \
    thunar-archive-plugin \
    xfconf \
    xfdesktop4 \
    xfwm4 \
    xfce4-screenshooter \
    evince \
    gpicview \
    xfce4-power-manager \
    network-manager-gnome \
    xfce4-notifyd \
    xfce4-clipman \
    xfce4-clipman-plugin \
    xfce4-systemload-plugin \
    xfce4-terminal \
    xterm \
    firefox-esr \
    geany

# Copy xresources
cp ~/debian-de/Xresources ~/.Xresources

echo 
echo xfce install complete, please reboot and issue 'startx'
echo

