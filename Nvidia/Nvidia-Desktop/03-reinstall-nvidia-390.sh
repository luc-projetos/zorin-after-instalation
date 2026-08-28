#!/bin/bash


## Criacao do diretorio ~/Downloads/Softwares/
if [ -d ~/Downloads/Softwares/ ];
then
    echo "O diretorio  ~/Downloads/Softwares/  ja existe"
else
    echo -e "\n\n\n\n Criando diretorio ~/Downloads/Softwares/ "
    mkdir -p ~/Downloads/Softwares/
fi


cd ~/Downloads/Softwares/

sudo apt autoremove nvidia* --purge -y

sudo apt install nvidia-cuda-toolkit -y

## Download CUDA-CUDNN
if [ -e cudnn-local-repo-ubuntu2204-9.3.0_1.0-1_amd64.deb ];
then
    echo "O arquivo  cudnn-local-repo-ubuntu2204-9.3.0_1.0-1_amd64.deb  ja existe"
else
    echo -e "\n\n\n\n CUDA-CUDNN"
    wget https://github.com/lucgithub343/placa-video-GT-610/releases/download/CUDA-CUDNN/cudnn-local-repo-ubuntu2204-9.3.0_1.0-1_amd64.deb
fi


chmod +x cudnn-local-repo-ubuntu2204-9.3.0_1.0-1_amd64.deb
sudo dpkg -i cudnn-local-repo-ubuntu2204-9.3.0_1.0-1_amd64.deb


sudo cp /var/cudnn-local-repo-ubuntu2204-9.3.0/cudnn-*-keyring.gpg /usr/share/keyrings/


sudo apt update -y
sudo apt install cudnn-cuda-12 -y
sudo apt install nvidia-driver-390 -y
