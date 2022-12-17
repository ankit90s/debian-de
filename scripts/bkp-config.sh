#!/bin/bash

echo
echo "Backing Up"
echo

rsync -aAXvP --delete ~/.config/bspwm ~/debian-bspwm-stable/dotconfig
rsync -aAXvP --delete ~/.config/sxhkd ~/debian-bspwm-stable/dotconfig
rsync -aAXvP --delete ~/.config/picom ~/debian-bspwm-stable/dotconfig
rsync -aAXvP --delete ~/.config/dunst ~/debian-bspwm-stable/dotconfig
rsync -aAXvP --delete ~/.config/kitty ~/debian-bspwm-stable/dotconfig
rsync -aAXvP --delete ~/.config/nvim ~/debian-bspwm-stable/dotconfig
rsync -aAXvP --delete ~/.config/polybar ~/debian-bspwm-stable/dotconfig
rsync -aAXvP --delete ~/.config/rofi ~/debian-bspwm-stable/dotconfig

# MPV
rsync -aAXvP --delete --exclude 'watch_later' ~/.config/mpv ~/debian-bspwm-stable/dotconfig

# Alacritty
rsync -aAXvP --delete ~/.config/alacritty.yml ~/debian-bspwm-stable/dotconfig
rsync -aAXvP --delete ~/.config/alacritty-themes ~/debian-bspwm-stable/dotconfig

# redshift
rsync -aAXvP --delete ~/.config/redshift.conf ~/debian-bspwm-stable/dotconfig
rsync -aAXvP --delete ~/.config/systemd/user/redshift.service ~/debian-bspwm-stable/dotscripts

rsync -aAXvP --delete ~/.config/starship.toml ~/debian-bspwm-stable/dotconfig

# Bash
rsync -aAXvP --delete ~/.bash_aliases ~/debian-bspwm-stable/bash_aliases
rsync -aAXvP --delete ~/.bashrc ~/debian-bspwm-stable/bashrc

# Ranger
rsync -aAXvP --delete ~/.config/ranger ~/debian-bspwm-stable/dotconfig

# Fonts
# rsync -aAXvP --delete --exclude=".uuid" ~/.fonts/* ~/debian-bspwm-stable/fonts

# Conky
rsync -aAXvP --delete ~/.config/conky ~/debian-bspwm-stable/dotconfig

# scripts
rsync -aAXvP --delete ~/scripts ~/debian-bspwm-stable

# Greenclip
rsync -aAXvP --delete ~/.config/greenclip.toml ~/debian-bspwm-stable/dotconfig

# ytfzf
rsync -aAXvP --delete ~/.config/ytfzf ~/debian-bspwm-stable/dotconfig

#  redshift
# rsync -aAXvP --delete ~/.config/systemd/user/redshift.service ~/debian-bspwm-stable

# maps
# rsync -aAXvP --delete ~/maps ~/debian-bspwm-stable

# betterlockscreen
# rsync -aAXvP --delete ~/.config/betterlockscreenrc ~/debian-bspwm-stable

# custom scripts
# rsync -aAXvP --delete ~/.scripts/* ~/debian-bspwm-stable/Scripts

# Jgmenu
# rsync -aAXvP --delete ~/.config/jgmenu ~/debian-bspwm-stable

# apt source list
rsync -aAXvP /etc/apt/sources.list ~/debian-bspwm-stable

# mime type
rsync -aAXvP ~/.config/mimeapps.list ~/debian-bspwm-stable/dotconfig

echo
echo -e "\e[1;32m Backup Finished \e[0m"

