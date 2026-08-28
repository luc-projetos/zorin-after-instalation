#!/bin/bash

echo -e "\n\n\n*************************************************** INSTALANDO  OBS  STUDIO  NATIVO **************************************************"

flatpak uninstall com.obsproject.Studio  -y

sudo add-apt-repository ppa:obsproject/obs-studio -y
sudo apt update -y
sudo apt install obs-studio -y


echo "***********************************************************************************************************************************************"


