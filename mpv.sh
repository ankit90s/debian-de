#! /bin/sh

sudo apt install curl
curl https://non-gnu.uvt.nl/debian/uvt_key.gpg --output uvt_key.gpg
sudo mv uvt_key.gpg /etc/apt/trusted.gpg.d
sudo apt install apt-transport-https
sudo sh -c 'echo "deb [arch=amd64] https://non-gnu.uvt.nl/debian $(lsb_release -sc) uvt" >> /etc/apt/sources.list.d/non-gnu-uvt.list'
sudo apt update
sudo apt install -t "o=UvT" mpv -y

