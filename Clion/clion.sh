#!/bin/bash

echo -e "\n\n\n######################################## INSTALACAO  CLION ########################################"

sudo apt install clion -y

## Mudando o arquivo executavel que é um shell script para o arquivo binario
sudo sed -ie 's\clion .*%u\/opt/clion/bin/clion\g' /usr/share/applications/clion.desktop

echo -e "\n\n\n###################################################################################################"
