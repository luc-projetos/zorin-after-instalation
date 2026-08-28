#!/bin/bash

## Criando diretorio Programas onde vao
## ficar os programaas que precisao de
## dwonloads para serem istalados
mkdir -p ~/Downloads/Softwares/

## Criando diretorio .icons
mkdir -p ~/.icons/

## Criando diretorio .themes
mkdir -p ~/.themes/

## Criando diretorio Temp
mkdir -p ~/Temp/


## Criando modelo de arquivo shell script
if [ -e ~/Templates/shell-script.sh ];
then
    echo "O arquivo  shell-script.sh  ja existe"
else
    touch ~/Templates/shell-script.sh
    echo "#!/bin/bash" > ~/Templates/shell-script.sh
fi



## Criando modelo de arquivo Dockerfile
if [ -e ~/Templates/Dockerfile ];
then
    echo "O arquivo  Dockerfile  ja existe"
else
    touch ~/Templates/Dockerfile
fi



## Criando modelo de arquivo docker-compose.yml
if [ -e ~/Templates/docker-compose.yml ];
then
    echo "O arquivo  docker-compose.yml  ja existe"
else
    touch ~/Templates/docker-compose.yml
fi

echo -e "\n\n\n************************************************** INSTALANDO  GIT *******************************************************************"

## Instalando o Git
sudo add-apt-repository ppa:git-core/ppa -y
sudo apt update -y
sudo apt install git -y
git --version

tempoParado=10
echo "Parando o Script por $tempoParado segundos para ver a versao do Git";
sleep $tempoParado;
echo "Continuando execucao do Script"

## git config --global credential.helper store

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n******************************************************* MISCELANIA ******************************************************************"

## Download Wallpapers
if [ -d ~/Wallpaper/ ];
then
    echo "O diretorio  ~/Wallpaper/  ja existe"
else
    echo -e "\n\n\n\n Wallpapers"
    git clone https://github.com/lucgithub343/Wallpapers.git
    cp -r Wallpapers/ ~/
fi



## Download tema Evergreen
if [ -d ~/.themes/Evergreen-GTK-AT ];
then
    echo "O diretorio  ~/.themes/Evergreen-GTK-AT  ja existe"
else
    echo -e "\n\n\n\n Evergreen"
    wget https://github.com/lucgithub343/gnome-themes/releases/download/gnome-themes/Evergreen-GTK-AT.tar.gz
    cp Evergreen-GTK-AT.tar.gz ~/.themes/
    cd ~/.themes/
    tar -xvzf Evergreen-GTK-AT.tar.gz
    rm Evergreen-GTK-AT.tar.gz

    ## Entrando na para pasta de programas
    cd ~/Downloads/Softwares/
fi



## Download Evergreen Forest Dark Icon
if [ -d ~/.icons/Everforest-Dark ];
then
    echo "O diretorio  ~/.icons/Everforest-Dark ja existe"
else
    wget https://github.com/lucgithub343/gnome-icons/releases/download/gnome-icons/Everforest-Dark.tar.gz
    cp Everforest-Dark.tar.gz ~/.icons/
    cd ~/.icons/
    tar -xvzf Everforest-Dark.tar.gz
    rm Everforest-Dark.tar.gz

    ## Entrando na para pasta de programas
    cd ~/Downloads/Softwares/
fi



## Download MacMojave cursores
if [ -d ~/.icons/McMojave-cursors ];
then
    echo "O diretorio  ~/.icons/McMojave-cursors  ja existe"
else
    echo -e "\n\n\n\n MacMojave cursores"
    wget https://github.com/lucgithub343/gnome-cursors/releases/download/gnome-cursosrs/McMojave-cursors.tar.gz
    cp McMojave-cursors.tar.gz ~/.icons/
    cd ~/.icons/
    tar -xvzf McMojave-cursors.tar.gz
    rm McMojave-cursors.tar.gz

    ## Entrando na para pasta de programas
    cd ~/Downloads/Softwares/
fi

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** DOWNLOAD   DE  PROGRAMAS **********************************************************"

## Download Chrome
if [ -e google-chrome-stable_current_amd64.deb ];
then
    echo "O arquivo  google-chrome-stable_current_amd64.deb  ja existe"
else
    echo -e "\n\n\n\n Chrome"
    wget https://github.com/lucgithub343/chrome/releases/download/chrome/google-chrome-stable_current_amd64.deb
fi


## Download Evolve
if [ -e evolve-1.5.1.deb ];
then
    echo "O arquivo  evolve-1.5.1.deb  ja existe"
else
    echo -e "\n\n\n\n Evolve"
    wget https://github.com/lucgithub343/evolve/releases/download/Evolve/evolve-1.5.1.deb
fi



## Download Visual Studio Code
if [ -e visual-studio-code_1.87.2-1709912201_amd64.deb ];
then
    echo "O arquivo  visual-studio-code_1.87.2-1709912201_amd64.deb   ja existe"
else
    echo -e "\n\n\n\n Visual Studio Code"
    wget https://github.com/lucgithub343/visual-studio-code/releases/download/visual-studio-code/visual-studio-code_1.87.2-1709912201_amd64.deb
fi

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n********************************************* INSTALANDO  O  DOCKER  E  DOCKER  COMPOSE  *********************************************"

# Add Docker's official GPG key:
sudo apt update -y
sudo apt install ca-certificates curl -y
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc


# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null


# Update list oof repositories
sudo apt update -y


# Install Docker
sudo apt install docker-ce\
                 docker-ce-cli\
                 containerd.io\
                 docker-buildx-plugin\
                 docker-compose-plugin -y


## Adding logged in user to docker group
sudo usermod -aG docker $USER

echo "***********************************************************************************************************************************************"


echo -e "\n\n\n****************************************************** INSTALANDO  O  KUBERNTES  *****************************************************"

sudo apt update -y

## Add Kubernetes Signing Key
curl -fsSL https://pkgs.k8s.io/core:/stable:/v1.30/deb/Release.key | sudo gpg --dearmor -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg

# Add Software Repositories
echo 'deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.30/deb/ /' | sudo tee /etc/apt/sources.list.d/kubernetes.list

sudo apt update -y

sudo apt install kubeadm kubelet kubectl -y

sudo apt-mark hold kubeadm kubelet kubectl 

tempoParado=10
echo "Parando o Script por $tempoParado segundos para ver a versao do Kubernets";
sleep $tempoParado;
kubeadm version

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  APLICATIVOS  APT ******************************************************"

## Atualizando PPA
sudo apt update -y

## Instalando gcc g++
sudo apt install gcc g++ make -y

## Intalando Gnome tweaks tools
sudo apt install gnome-tweaks -y

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  ARQUIVOS  .DEB ********************************************************"

## Chrome
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt --fix-broken install -y


## Evolve
sudo dpkg -i evolve-1.5.1.deb
sudo apt --fix-broken install -y

echo "***********************************************************************************************************************************************"





echo -e "\n\n\n ***************************************  INSTALANDO  VISUAL  STUDIO  CODE  E  EXTENCOES  ********************************************"


sudo dpkg -i visual-studio-code_1.87.2-1709912201_amd64.deb
sudo apt --fix-broken install -y


## INSTALANDO  EXTENÇÕES  DO  VISUAL  STUDIO  CODE

## Instalando Material Icon themes
code --install-extension PKief.material-icon-theme

## Instalando Mithril Emmet
code --install-extension PFallenMax.mithril-emmet

## Instalando ESlint
code --install-extension dbaeumer.vscode-eslint

## Instlando Better Comments
code --install-extension aaron-bond.better-comments

## Instlando GitLens
code --install-extension eamodio.gitlens

## Instlando Tabnine
code --install-extension TabNine.tabnine-vscode

## Suporte a arquivos yml
code --install-extension redhat.vscode-yaml

## Melhor sintaxe para shell script
code --install-extension jeff-hykin.better-shellscript-syntax

## Auto complete de sintaxe para Shelll Script
code --install-extension tetradresearch.vscode-h2o

## Mostra Reultados quando vc muda o codigo no TypeScript e no JavaScript
code --install-extension jeff-hykin.better-shellscript-syntax

## Live Server para mostrar modificacoes na pagina
code --install-extension ritwickdey.LiveServer



## INSTALANDO  PARENTESES  AUTOMATICOS  NOS  METODOS  JAVASCRIPT  E  TYPESCRIPT

echo '{' | tee ~/.config/Code/User/settings.json

## parenteses atumomaticos nas funcoes do JavaScript
echo '"javascript.suggest.completeFunctionCalls": true,' | tee -a ~/.config/Code/User/settings.json

## parenteses atumomaticos nos metodos do TypeScript
echo '"typescript.suggest.completeFunctionCalls": true,' | tee -a ~/.config/Code/User/settings.json


echo '}' | tee  -a ~/.config/Code/User/settings.json

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n ************************************************  ADICIONANDO  TERMINATOR  AO  MENU  ************************************************"

sudo apt update -y

## Instalando terminal terminator
sudo apt install terminator -y

sudo apt install python3-pip -y
pip install nautilus-open-any-terminal
nautilus -q

glib-compile-schemas ~/.local/share/glib-2.0/schemas/
gsettings set com.github.stunkymonkey.nautilus-open-any-terminal terminal terminator
gsettings set com.github.stunkymonkey.nautilus-open-any-terminal keybindings '<Ctrl><Alt>t'
gsettings set com.github.stunkymonkey.nautilus-open-any-terminal new-tab true
gsettings set com.github.stunkymonkey.nautilus-open-any-terminal flatpak system


echo "***********************************************************************************************************************************************"




echo -e "\n\n\n*************************************** REMOVENDO ARQUIVOS DA PASTA TEMPLATES  *******************************************************"

rm ~/Templates/LibreOffice\ Calc.ods
rm ~/Templates/LibreOffice\ Draw.odg
rm ~/Templates/LibreOffice\ Impress.odp
rm ~/Templates/LibreOffice\ Writer.odt

echo -e "\n\n\n******************************************REINICIAR  O  COMPUTADOR********************************************************************"