#!/bin/bash


echo -e "\n\n\n###################################### INSTALACAO  PHP  STORM ######################################"

sudo apt install phpstorm -y

## Mudando o arquivo executavel que é um shell script para o arquivo binario
sudo sed -ie 's\phpstorm .*%u\/opt/phpstorm/bin/phpstorm\g' /usr/share/applications/phpstorm.desktop

echo -e "\n\n\n###################################################################################################"
