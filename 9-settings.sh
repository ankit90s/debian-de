#!/bin/bash

# Get username
username=$(id -u -n 1000)
builddr=$(pwd)

rm -rf /home/$USER/.config/xfce4
cp -r /home/$USER/debian-de/settings/xfce-desktop-backup/xfce-settings/* /home/$USER/.config/
