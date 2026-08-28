#!/bin/bash

echo -e "\n\n\n####################################### INSTALACAO  PYCHARM #######################################"

sudo apt install pycharm-professional -y

## Mudando o arquivo executavel que é um shell script para o arquivo binario
sudo sed -ie 's\pycharm-professional .*%u\/opt/pycharm-professional/bin/pycharm\g' /usr/share/applications/pycharm-professional.desktop

echo -e "\n\n\n###################################################################################################"
