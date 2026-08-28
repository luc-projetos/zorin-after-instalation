#!/bin/bash

echo -e "\n\n\n ***********************************************  INSTALANDO  VISUAL  STUDIO  CODIUM  ************************************************"

## Entrando no diretorio com as extencoes
cd ~/Installation/vscode-vscodium-extensions



sudo dpkg -i codium_1.94.2.24286_amd64.deb
sudo apt --fix-broken install -y

## Abringdo o Codium
codium

tempoParado=10
echo "Parando o Script por $tempoParado abrir o Codium";
sleep $tempoParado;
echo "Continuando execucao do Script"


## Copiando o arquivo de configuracao do VsCode para o VsCodium
cp ~/.config/Code/User/settings.json ~/.config/VSCodium/User/


## Entrando na para pasta de programas
cd ~/Downloads/Softwares/

echo "***********************************************************************************************************************************************"
