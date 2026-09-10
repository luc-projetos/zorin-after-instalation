#!/bin/bash

echo -e "\n\n\n################################################################ INSTALACAO  DO  NAVEGADOR  WATERFOX ##############################################################"

sudo apt update -y
echo 'deb http://download.opensuse.org/repositories/home:/hawkeye116477:/waterfox/xUbuntu_22.04/ /' | sudo tee /etc/apt/sources.list.d/home:hawkeye116477:waterfox.list
curl -fsSL https://download.opensuse.org/repositories/home:hawkeye116477:waterfox/xUbuntu_22.04/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/home_hawkeye116477_waterfox.gpg > /dev/null
sudo apt update -y
sudo apt install waterfox-kde -y

echo -e "\n\n\n###################################################################################################################################################################"
