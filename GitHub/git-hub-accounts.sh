#!/bin/bash


## Entrando na para pasta de programas
cd ~/Downloads/Softwares/



## Testando para ver se o diretorio  ~/.ssh/  existe
if [ -d ~/.ssh/ ];
then
    echo "O diretorio  ~/.ssh/  ja existe"
else
    echo "Criando o diretorio  ~/.ssh/"
    mkdir -p ~/.ssh/
fi



## Testando para ver se o arquivo  ~/.ssh/config  ja existe
if [ -e ~/.ssh/config ];
then
    echo "O arquivo  ~/.ssh/config  ja existe"
else
    echo "Copiando o arquivo config para pasta ~/.ssh/"
    git https://github.com/luc-programs/git-hub-accounts.git
    cd git-hub-accounts/
    cp config ~/.ssh/
fi


cd ~/.ssh



echo -e "\n\n\n************************************************************* PROJECTS ***************************************************************"

echo "Configurando conta luc-projects"
ssh-keygen -t rsa -C "luc.projects@hotmail.com" -f "luc-projects"
gedit ~/.ssh/luc-projects.pub
ssh-add ~/.ssh/luc-projects

echo "***********************************************************************************************************************************************"


cd ~/.ssh


echo -e "\n\n\n************************************************************ PROGRAMS ****************************************************************"

echo "Configurando conta luc-programs"
ssh-keygen -t rsa -C "luc.github.programs@hotmail.com" -f "luc-programs"
gedit ~/.ssh/luc-programs.pub
ssh-add ~/.ssh/luc-programs

echo "***********************************************************************************************************************************************"
