#!/bin/sh

# Dependencies
DEPENDENCIES="grep sed curl gawk openssl ffmpeg"
sudo apt install $DEPENDENCIES

# ani-cli
sudo rm -rf "/usr/local/share/ani-cli" "/usr/local/bin/ani-cli" "/usr/local/bin/UI" /usr/local/bin/player_*
git clone "https://github.com/pystardust/ani-cli.git" && cd ./ani-cli
sudo cp ./ani-cli /usr/local/bin
cd .. && rm -rf "./ani-cli"

# mov-cli
sudo curl -s "https://github.com/mov-cli/mov-cli/raw/v3/mov-cli" -L -o /usr/local/bin/mov-cli && sudo chmod +x /usr/local/bin/mov-cli

# fast-cli
wget https://github.com/ddo/fast/releases/download/v0.0.4/fast_linux_amd64
sudo install fast_linux_amd64 /usr/local/bin/fast
rm fast_linux_amd64

# pfetch
axel https://github.com/dylanaraps/pfetch/archive/refs/tags/0.6.0.zip -o pfetch.zip
unzip pfetch.zip
cd pfetch-0.6.0/ && sudo cp pfetch /usr/local/bin && cd ../
rm -rf pfetch-0.6.0 && rm pfetch.zip

# ytfzf
git clone https://github.com/pystardust/ytfzf
cd ytfzf
sudo make install doc
cd ../ && rm -rf ytfzf

# speedtest
# curl -s https://packagecloud.io/install/repositories/ookla/speedtest-cli/script.deb.sh | sudo bash
# sudo apt -y install speedtest

hash -r

echo
printf "\e[1;32m CLI-Apps Installed! Thanks you.\e[0m\n"
