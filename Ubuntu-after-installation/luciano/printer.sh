#!/bin/bash


## Entrando na para pasta de Software
cd ~/Downloads/Softwares/


echo -e "\n\n******************************************** INSTALANDO  IMPRESSORA  CANON *************************************************************"

## https://th.canon/en/support/PIXMA%20G3010/model
## Download Driver Impressora
echo -e "\n\n\n Driver Impressora"
if [ -d /impressora-Canon-G-3110-deb ];
then
  cd impressora-Canon-G-3110-deb/
  chmod +x install.sh
  sudo ./install.sh
else
    wget https://github.com/lucotavio/impressora-canon/releases/download/impressora-canon/impressora-Canon-G-3110-deb.tar.gz
    descompactar-tar-gz impressora-Canon-G-3110-deb.tar.gz
    cd impressora-Canon-G-3110-deb/
    chmod +x install.sh
    sudo ./install.sh
fi

echo -e "\n\n****************************************************************************************************************************************"
