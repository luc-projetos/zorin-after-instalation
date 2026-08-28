#!/bin/bash

echo -e "\n\n\n**************************************************** INSTALANDO  FIREFOX  NATIVO ****************************************************"

## Removendo o Firefox Flatpak
flatpak uninstall org.mozilla.firefox  -y

## Instalando Firefox .deb
sudo add-apt-repository ppa:mozillateam/ppa -y
sudo apt update -y
sudo apt install --target-release 'o=LP-PPA-mozillateam' firefox -y


echo "Package: firefox*" | sudo tee -a /etc/apt/preferences.d/mozillateamppa
echo "Pin: release o=LP-PPA-mozillateam" | sudo tee -a /etc/apt/preferences.d/mozillateamppa
echo "Pin-Priority: 501" | sudo tee -a /etc/apt/preferences.d/mozillateamppa

echo "***********************************************************************************************************************************************"
