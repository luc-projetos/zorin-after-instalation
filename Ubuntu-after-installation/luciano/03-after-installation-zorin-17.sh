#!/bin/bash


## Entrando na para pasta de programas
cd ~/Downloads/Softwares/

sudo apt update -y
sudo apt install libxcb-cursor0 libapr1 libaprutil1 -y


## Download DaVinci Resolve
if [ -e DaVinci_Resolve_18.6.6_Linux.run ];
then
    echo "O arquivo  DaVinci_Resolve_18.6.6_Linux.run  ja existe"
else
    ## Comando abaixo é para dividir um arquivo grande como o do DaVinci Resolve
    ## split -b 700m -d DaVinci_Resolve_18.6.6_Linux.run davinci-part

    echo -e "\n\n\n\n DaVinci_Resolve_18.6.6_Linux.run"
    wget https://github.com/luc-programs/davinci-resolve/releases/download/davinci/davinci-partaa
    wget https://github.com/luc-programs/davinci-resolve/releases/download/davinci/davinci-partab
    wget https://github.com/luc-programs/davinci-resolve/releases/download/davinci/davinci-partac
    wget https://github.com/luc-programs/davinci-resolve/releases/download/davinci/davinci-partad

    echo -e "\n\n Iniciano uniao dos arquivos particionado do DaVinci Resolve"
    cat davinci-part* > DaVinci_Resolve_18.6.6_Linux.run
    echo -e "\n\n Fim da uniao dos arquivos particionado do DaVinci Resolve"
fi


chmod +x DaVinci_Resolve_18.6.6_Linux.run
sudo ./DaVinci_Resolve_18.6.6_Linux.run
