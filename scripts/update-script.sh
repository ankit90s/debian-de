#!/bin/bash

# Papirus-icons
# wget -qO- https://git.io/papirus-icon-theme-install | sh

# Papirus-folders-icons
# wget -qO- https://git.io/papirus-folders-install | sh

# Wallpaper Database
wget -cO - https://gitlab.com/dwt1/wallpapers/-/archive/master/wallpapers-master.zip > wallpaper.zip
unzip wallpaper.zip
sudo rsync -aAXvP --delete wallpapers-master/*.jpg /usr/share/images/wallpapers-master
rm -rf wallpapers-master
rm wallpaper.zip

# ANI_CLI
sudo rm -rf "/usr/local/share/ani-cli" "/usr/local/bin/ani-cli" "/usr/local/bin/UI" /usr/local/bin/player_* #If some of these aren't found, it's not a problem
git clone "https://github.com/pystardust/ani-cli.git" && cd ./ani-cli
sudo cp ./ani-cli /usr/local/bin
cd .. && rm -rf "./ani-cli"

# MOV_CLI
sudo curl -s "https://github.com/mov-cli/mov-cli/raw/v3/mov-cli" -L -o /usr/local/bin/mov-cli && sudo chmod +x /usr/local/bin/mov-cli

hash -r

echo
echo -e "\e[1;32m Update Finished \e[0m"

