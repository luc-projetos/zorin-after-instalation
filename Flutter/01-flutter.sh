#!/bin/bash


## Download Wallpapers
if [ -d ~/Downloads/Softwares/flutter/ ];
then
    echo "O diretorio  ~/Downloads/Softwares/flutter/  ja existe"
    sudo cp -r flutter /opt/
else
    wget https://github.com/luc-programs/flutter/releases/download/Flutter/flutter_linux_3.24.5-stable.tar.xz
    tar xvf flutter_linux_3.24.5-stable.tar.xz
    sudo cp -r flutter /opt/
fi


## Verificando se o Flutter ja esta configurado
if grep -qi 'export FLUTTER_HOME=/opt/flutter' ~/.bashrc;
then
    echo "Variaveis de ambiente do Flutter ja configuradas"
else
  echo 'export FLUTTER_HOME=/opt/flutter' >> ~/.bashrc
  echo 'export PATH=$PATH:$FLUTTER_HOME/bin' >> ~/.bashrc
fi
