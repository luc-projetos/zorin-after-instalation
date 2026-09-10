#!/bin/bash


## Criacao do diretorio ~/Downloads/Softwares/
if [ -d ~/Downloads/Softwares/ ];
then
    echo "O diretorio  ~/Downloads/Softwares/  ja existe"
else
    echo -e "\n\n\n\n Criando diretorio ~/Downloads/Softwares/ "
    mkdir -p ~/Downloads/Softwares/
fi


## Criando diretorio .icons
mkdir -p ~/.icons/

## Criando diretorio .themes
mkdir -p ~/.themes/

## Criando diretorio Temp
mkdir -p ~/Temp/

## Criando diretorio do OBS Studio
mkdir -p ~/Videos/OBS-Studio/

## Criando diretorio ISO dentro da pasta Instalacao
mkdir -p ~/Installation/ISO/

## Criando diretorio Script dentro da pasta Installation
mkdir -p ~/Installation/Script/


## Criando diretorio de projetos do Java
mkdir -p ~/Projects/Java


## Criando diretorio de projetos do Angular
mkdir -p ~/Projects/Angular


## Criando diretorio Script de Projetos do React
mkdir -p ~/Projects/React


## Criando diretorio dos Servers
mkdir -p ~/Servers


## Criando diretorio Courses
mkdir -p ~/Courses

## Entrando na para pasta de programas
cd ~/Downloads/Softwares/



## Criando modelo de arquivo texto plano
if [ -e ~/Templates/text-plain ];
then
    echo "O arquivo  text-plain  ja existe"
else
    touch ~/Templates/text-plain
fi



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



echo -e "\n\n\n******************************************************************************************* INSTALANDO  RESTRICTED  EXTRAS *******************************************************************************************"

sudo apt install ubuntu-restricted-extras -y

echo "*******************************************************************************************************************************************************************************************************************************"




echo -e "\n\n\n******************************************************************************** INSTALANDO  COMPACTADORES  E  DESCOMPACTADORES  *************************************************************************************"

## E nescessario instalar os compactadores
## e descompactadores aqui, porque
## logo em seguida alguns
## arquivos vao ser descompactados
sudo apt update -y
sudo apt install sharutils -y
sudo apt install p7zip-full p7zip-rar lzma lzma-dev rar unrar-free p7zip ark ncompress -y

echo "*******************************************************************************************************************************************************************************************************************************"




echo -e "\n\n\n************************************************************************************************** INSTALANDO  GIT ***************************************************************************************************"

sudo add-apt-repository ppa:git-core/ppa -y
sudo apt update -y
sudo apt install git -y
git --version

tempoParado=5
echo "Parando o Script por $tempoParado segundos para ver a versao do Git";
sleep $tempoParado;
echo "Continuando execucao do Script"

## git config --global credential.helper store

echo "*******************************************************************************************************************************************************************************************************************************"




echo -e "\n\n\n************************************************************************************************** INSTALANDO  MELD **************************************************************************************************"

## Instalando e configurando Meld
sudo apt install meld -y
git config --global diff.tool meld
git config --global difftool.meld.path "/usr/bin/meld"
git config --global difftool.prompt false
git config --global merge.tool meld
git config --global mergetool.meld.path "/usr/bin/meld"
git config --global mergetool.prompt false

echo "*******************************************************************************************************************************************************************************************************************************"




echo -e "\n\n\n************************************************************************************* INSTALANDO  O  DOCKER  E  DOCKER  COMPOSE  *************************************************************************************"

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

echo "*******************************************************************************************************************************************************************************************************************************"




echo -e "\n\n\n***************************************************************************************************** MISCELANIA *****************************************************************************************************"

## Download Compactador
if [ -e compactar-tar-gz ];
then
    echo "O arquivo  compactar-tar-gz  ja existe e vai ser copiado para pasta  /usr/local/bin/"
    sudo cp compactar-tar-gz /usr/local/bin/
else
    echo -e "\n\n\n Compactador-tar-gz"
    wget https://github.com/luc-programs/compactador/releases/download/Compactador/compactar-tar-gz

    chmod +x compactar-tar-gz
    sudo cp compactar-tar-gz /usr/local/bin/
fi



## Download Descompactar
if [ -e descompactar-tar-gz ];
then
    echo "O arquivo  descompactar-tar-gz  ja existe e vai ser copiado para pasta  /usr/local/bin/"
    sudo cp descompactar-tar-gz /usr/local/bin/
else
    echo -e "\n\n\n Descompactar-tar-gz"
    wget https://github.com/luc-programs/descompactador/releases/download/Descompactador/descompactar-tar-gz

    chmod +x descompactar-tar-gz
    sudo cp descompactar-tar-gz /usr/local/bin/
fi



## Download Wallpapers
if [ -d ~/wallpaper/ ];
then
    echo "O diretorio  ~/Wallpaper/  ja existe"
else
    echo -e "\n\n\n\n Wallpapers"
    git clone https://github.com/luc-programs/wallpapers.git
    cp -r wallpapers/ ~/
fi



## Download dos scripts de instalacao do Zorin
if [ -d ~/Installation/Script/zorin-after-instalation/ ];
then
    echo "O diretorio  ~/Installation/Script/zorin-after-instalation/  ja existe"
else
    echo -e "\n\n\n\n Scripts de instalacao do Zorin 17"
    git clone https://github.com/luc-projetos/zorin-after-instalation.git
    cp -r ~/Downloads/Softwares/zorin-after-instalation/ ~/Installation/Script/
fi



## Download do projeto com mapamento multibanco
## Esse mapeamento serve para bancos de dados que usam identity ou sequence
if [ -d ~/Projects/Java/hibernate-mapeamento-multibanco/ ];
then
    echo "O diretorio  ~/Projects/Java/hibernate-mapeamento-multibanco/  ja existe"
else
    echo -e "\n\n\n\n Projeto com mapeamento multibanco"
    git clone https://github.com/luc-projects/hibernate-mapeamento-multibanco.git
    cp -r ~/Downloads/Softwares/hibernate-mapeamento-multibanco/ ~/Projects/Java/
fi




## Download tema Kimi Dark
if [ -d ~/.themes/Kimi-dark-v40 ];
then
    echo "O diretorio  ~/.themes/Kimi-dark-v40  ja existe"
else
    echo -e "\n\n\n\n Kimi Dark"
    wget https://github.com/luc-programs/gnome-themes/releases/download/Gnome-Themes/Kimi-dark-v40.tar.gz
    cp Kimi-dark-v40.tar.gz ~/.themes/
    cd ~/.themes/
    tar -xvzf Kimi-dark-v40.tar.gz

    ## Entrando na para pasta de programas
    cd ~/Downloads/Softwares/
fi



## Download tema Snow Alien
if [ -d ~/.themes/Snow-alien ];
then
    echo "O diretorio  ~/.themes/Snow-alien  ja existe"
else
    echo -e "\n\n\n\n Snow Alien"
    wget https://github.com/luc-programs/gnome-themes/releases/download/Gnome-Themes/Snow-alien.tar.gz
    cp Snow-alien.tar.gz ~/.themes/
    cd ~/.themes/
    tar -xvzf Snow-alien.tar.gz

    ## Entrando na para pasta de programas
    cd ~/Downloads/Softwares/
fi



## Download tema Evergreen
if [ -d ~/.themes/Evergreen-GTK-AT ];
then
    echo "O diretorio  ~/.themes/Evergreen-GTK-AT  ja existe"
else
    echo -e "\n\n\n\n Evergreen"
    wget https://github.com/luc-programs/gnome-themes/releases/download/Gnome-Themes/Evergreen-GTK-AT.tar.gz
    cp Evergreen-GTK-AT.tar.gz ~/.themes/
    cd ~/.themes/
    tar -xvzf Evergreen-GTK-AT.tar.gz

    ## Entrando na para pasta de programas
    cd ~/Downloads/Softwares/
fi



## Download Deepin Icon
if [ -d ~/.icons/Deepin ];
then
    echo "O diretorio  ~/.icons/Deepin  ja existe"
else
    wget https://github.com/luc-programs/gnome-icons/releases/download/Gnome-Icons/Deepin.tar.gz
    cp Deepin.tar.gz ~/.icons/
    cd ~/.icons/
    tar -xvzf Deepin.tar.gz

    ## Entrando na para pasta de programas
    cd ~/Downloads/Softwares/
fi



## Download Evergreen Forest Dark Icon
if [ -d ~/.icons/Everforest-Dark ];
then
    echo "O diretorio  ~/.icons/Everforest-Dark ja existe"
else
    wget https://github.com/luc-programs/gnome-icons/releases/download/Gnome-Icons/Everforest-Dark.tar.gz
    cp Everforest-Dark.tar.gz ~/.icons/
    cd ~/.icons/
    tar -xvzf Everforest-Dark.tar.gz

    ## Entrando na para pasta de programas
    cd ~/Downloads/Softwares/
fi



## Download MacMojave cursores
if [ -d ~/.icons/McMojave-cursors ];
then
    echo "O diretorio  ~/.icons/McMojave-cursors  ja existe"
else
    echo -e "\n\n\n\n MacMojave cursores"
    wget https://github.com/luc-programs/gnome-cursors/releases/download/Gnome-Cursors/McMojave-cursors.tar.gz
    cp McMojave-cursors.tar.gz ~/.icons/
    cd ~/.icons/
    tar -xvzf McMojave-cursors.tar.gz

    ## Entrando na para pasta de programas
    cd ~/Downloads/Softwares/
fi



## Download Docker Compose dos bancos de dados
if [ -d ~/Installation/database-docker-compose/ ];
then
    echo "O diretorio  database-docker-compose  ja existe"
else
    echo -e "\n\n\n\n Docker Compose dos bancos de dados"
    git clone https://github.com/luc-programs/database-docker-compose.git

    cp -r ~/Downloads/Softwares/database-docker-compose/ ~/Installation/
fi

echo "*******************************************************************************************************************************************************************************************************************************"




echo -e "\n\n\n********************************************************************************************** DOWNLOAD   DE  PROGRAMAS **********************************************************************************************"

## Download 4K Video Downloader
if [ -e 4kvideodownloaderplus_1.8.5-1_amd64.deb ];
then
    echo "O arquivo  4kvideodownloaderplus_1.8.5-1_amd64.deb  ja existe"
else
    echo -e "\n\n\n\n 4K Video Downloader"
    wget https://github.com/luc-programs/4k-videodownloader/releases/download/4k-videodownloader/4kvideodownloaderplus_1.8.5-1_amd64.deb
fi



## Download Apache Netbeans
if [ -e apache-netbeans_24-1_all.deb ];
then
    echo "O arquivo  apache-netbeans_24-1_all.deb"
else
    echo -e "\n\n\n\n Apache Netbeans"
    wget https://github.com/luc-programs/apache-netbeans/releases/download/Apache-Netbeans/apache-netbeans_24-1_all.deb
fi



## Download Atom
if [ -e atom-amd64.deb ];
then
    echo "O arquivo  atom-amd64.deb  ja existe"
else
    echo -e "\n\n\n\n Atom"
    wget https://github.com/luc-programs/atom/releases/download/Atom/atom-amd64.deb
fi



## Download Balena Etcher
if [ -e balena-etcher_1.19.4_amd64.deb ];
then
    echo "O arquivo  balena-etcher_1.19.4_amd64.deb  ja existe"
else
    echo -e "\n\n\n\n Balena Etcher"
    wget https://github.com/luc-programs/balena-etcher/releases/download/Balen-Etcher/balena-etcher_1.19.4_amd64.deb
fi



## Download Balena Etcher Icon
if [ -e Etcher-icon.png ];
then
    echo "O arquivo  Etcher-icon.png  ja existe"
    sudo mkdir /opt/balena-etcher-icon/
    sudo cp Etcher-icon.png /opt/balena-etcher-icon/
else
    echo -e "\n\n\n\n Balena Etcher Icon"
    sudo mkdir /opt/balena-etcher-icon/
    wget https://github.com/luc-programs/balena-etcher/releases/download/Balen-Etcher/Etcher-icon.png
    sudo cp Etcher-icon.png /opt/balena-etcher-icon/
fi



## Download BrModelo
if [ -e br-modelo-3.3.2.deb ];
then
    echo "O arquivo  br-modelo-3.3.2.deb  ja existe"
else
    echo -e "\n\n\n\n br-modelo-3.3.2.deb"
    wget https://github.com/luc-programs/br-modelo/releases/download/BRModelo/br-modelo-3.3.2.deb

fi



## Download Chrome
if [ -e google-chrome-stable_current_amd64.deb ];
then
    echo "O arquivo  google-chrome-stable_current_amd64.deb  ja existe"
else
    echo -e "\n\n\n\n Chrome"
    wget https://github.com/luc-programa343/Chrome/releases/download/Chrome/google-chrome-stable_current_amd64.deb
fi


## Download DBeaver
if [ -e dbeaver-le_23.2.0_amd64.deb ];
then
    echo "O arquivo  dbeaver-le_23.2.0_amd64.deb  ja existe"
else
    echo -e "\n\n\n\n DBeaver"
    wget https://github.com/luc-programs/dbeaver/releases/download/Dbeaver/dbeaver-le_23.2.0_amd64.deb
fi



## Download Evolve
if [ -e evolve-1.5.1.deb ];
then
    echo "O arquivo  evolve-1.5.1.deb  ja existe"
else
    echo -e "\n\n\n\n Evolve"
    wget https://github.com/luc-programs/evolve/releases/download/Evolve/evolve-1.5.1.deb
fi



## Download HeidiSql
if [ -e HeidiSQL_12.11.1.167.deb ];
then
    echo "O arquivo  HeidiSQL_12.11.1.167.deb  ja existe"
else
    echo -e "\n\n\n\n HeidiSql"
    wget https://github.com/luc-programs/heidi-sql/releases/download/HeidiSql/HeidiSQL_12.11.1.167.deb
fi



## Download Insync
if [ -e insync_3.9.11.60043-noble_amd64.deb ];
then
    echo "O arquivo insync_3.9.11.60043-noble_amd64.deb ja existe"
else
    echo -e "\n\n\n\n Insync"
    wget https://github.com/luc-programa343/Insync/releases/download/Insync/insync_3.9.11.60043-noble_amd64.deb
fi



## Download Iriun Webcam
if [ -e iriunwebcam-2.8.2.deb ];
then
    echo "O arquivo  iriunwebcam-2.8.2.deb  ja existe"
else
    echo -e "\n\n\n\n Iriun Webcam"
    wget https://github.com/luc-programs/iriun-webcam/releases/download/Iriun-Webcam/iriunwebcam-2.8.2.deb
fi



## Download Jasper Soft Studio
if [ -e jasper-soft-studio-7.0.3.deb ];
then
    echo "O arquivo  jasper-soft-studio-7.0.3.deb  ja existe"
else
    echo -e "\n\n\n\n Jasper Soft Studio"
    wget https://github.com/luc-programs/jasper-soft-studio/releases/download/jasper-soft-studio/jasper-soft-studio-7.0.3.deb
fi



## Download JDK
if [ -e jdk-21_linux-x64_bin.deb ];
then
    echo "O arquivo  JDK  ja existe"
else
    echo -e "\n\n\n\n JDK"
    wget https://github.com/luc-programs/br-modelo/releases/download/BRModelo/jdk-21_linux-x64_bin.deb
fi



## Download Lombok
if [ -e lombok.jar ];
then
    echo "O arquivo  lombok.jar  ja existe"
else
    echo -e "\n\n\n\n Lombok"
    wget https://github.com/luc-programs/lombok/releases/download/lombok/lombok.jar
fi



## Download Mongo Compass
## https://www.mongodb.com/pt-br/docs/compass/install/?operating-system=linux&package-type=.deb
if [ -e mongodb-compass_1.49.15_amd64.deb ];
then
    echo "O arquivo  mongodb-compass_1.49.15_amd64.deb ja  existe"
else
    echo -e "\n\n\n\n Mongo Compass"
    wget https://github.com/luc-programa343/Mongo-Compass/releases/download/mongo-compass/mongodb-compass_1.49.15_amd64.deb
fi



## Download MySql Workbench
if [ -e mysql-workbench-community_8.0.42-1ubuntu22.04_amd64.deb ];
then
    echo "O arquivo   mysql-workbench-community_8.0.42-1ubuntu22.04_amd64.deb  ja existe"
else
    echo -e "\n\n\n\n MySql Workbench"
    wget https://github.com/luc-programs/mysql-workbench/releases/download/MySql-Workbench/mysql-workbench-community_8.0.42-1ubuntu22.04_amd64.deb
fi



## Download Only Office
if [ -e onlyoffice-desktopeditors_amd64.deb ];
then
    echo "O arquivo  onlyoffice-desktopeditors_amd64.deb  ja existe"
else
    echo -e "\n\n\n\n Only Office"
    wget https://github.com/luc-programs/only-office/releases/download/Only-Office/onlyoffice-desktopeditors_amd64.deb
fi



## Download Rstudio
if [ -e rstudio-2024.12.0-467-amd64.deb ];
then
    echo "O arquivo  rstudio-2024.12.0-467-amd64.deb  ja existe"
else
    echo -e "\n\n\n\n Rstudio"
    ## https://software.opensuse.org/download.html?project=home%3Astevenpusser%3Apalemoon-GTK3&package=palemoon
    wget https://github.com/luc-programs/rstudio/releases/download/RStudio/rstudio-2024.12.0-467-amd64.deb
fi



## Download Spring Tool Suite
if [ -e spring-tool-suite-4.28.1.RELEASE.deb ];
then
    echo "O arquivo  spring-tool-suite-4.28.1.RELEASE.deb  ja existe"
else
    echo -e "\n\n\n\n Spring tool suite"
    wget https://github.com/luc-programs/spring-tool-suite/releases/download/sts/spring-tool-suite-4.28.1.RELEASE.deb
fi



## Download StarUML
if [ -e StarUML_6.1.0_amd64.deb ];
then
    echo "O arquivo  StarUML_6.1.0_amd64.deb  ja existe"
else
    echo -e "\n\n\n\n StarUML"
    wget https://github.com/luc-programs/star-uml/releases/download/Star-Uml/StarUML_6.1.0_amd64.deb
fi



## Download Visual Studio Code
if [ -e code_1.94.2-1728494015_amd64.deb ];
then
    echo "O arquivo  code_1.94.2-1728494015_amd64.deb   ja existe"
else
    echo -e "\n\n\n\n Visual Studio Code"
    wget https://github.com/luc-programs/visual-studio-code/releases/download/Visual-Studio-Code/code_1.94.2-1728494015_amd64.deb
fi



## Download Wmware workstation
if [ -e VMware-Workstation-Full-17.5.1-23298084.x86_64.bundle ];
then
    echo "O arquivo  VMware-Workstation-Full-17.5.1-23298084.x86_64.bundle   ja existe"
else
    echo -e "\n\n\n\n VMware"
    wget https://github.com/luc-programa343/VmWare-Workstation/releases/download/VmWare-Workstation/VMware-Workstation-Full-17.6.4-24832109.x86_64.bundle
fi



## Download Serial VMware Workstation
if [ -e serial-vmware-workstation.txt ];
then
    echo "O arquivo  serial-vmware-workstation.txt  ja existe"
else
    echo -e "\n\n\n\n Serial VMware Workstation"
    wget https://github.com/luc-programs/wmware/releases/download/Vmware/serial-vmware-workstation.txt
fi

echo -e "\n\n\n**********************************************************************************************************************************************************************************************************************"




echo -e "\n\n\n******************************************************************************************** INSTALANDO  APLICATIVOS  APT ********************************************************************************************"

## Atualizando PPA
sudo apt update -y

## Instalacao deo compilador Cobol
sudo apt install gnucobol4 -y

## Instalando GNOME Text Editor
sudo apt install gnome-text-editor -y

## Instalando fonte Notepadqq
sudo apt install notepadqq -y

## Instalando fonte Vim editor
sudo apt install vim -y

## Instalando terminal terminator
sudo apt install terminator -y

## Instalando terminal leitor de PDF Okular
sudo apt install okular -y

## Instalando Dconf Editor
sudo apt install dconf-editor -y

## Instalando fonte firecode
sudo apt install fonts-firacode -y

## Instalando Hardinfo
sudo apt install hardinfo -y

## Instalando gcc g++
sudo apt install gcc g++ make -y

## Instalando o Transmission
sudo apt install transmission -y

## Intalando Gnome tweaks tools
sudo apt install gnome-tweaks -y

## Instalando net-tools
sudo apt install net-tools -y

## Instalando libglib2.0-dev
sudo apt install libglib2.0-dev -y

## Instalando libgconf-2-4
sudo apt install libgconf-2-4 -y

## Instalando cmake
sudo apt install cmake -y

## Instalando libfuse2
## Programas do tipo AppImage
## precisao deste pacote
sudo apt install libfuse2 -y

## Instalando VLC
sudo apt install vlc -y

## Instalando Browser Epiphany
sudo apt install epiphany-browser -y

## Instalando Gnome extensions
sudo apt install gnome-shell-extensions -y
sudo apt install chrome-gnome-shell -y

## Instalando o gerenciador de extensões
sudo apt install gnome-shell-extension-manager -y

## Instalando Kolourpaint
sudo apt install kolourpaint -y

## Instalando Gparted
sudo apt install gparted -y

## Instalando Gerenciador de pacote Synaptic
sudo apt install synaptic -y

## Instalando Umbrelo
sudo apt install umbrello -y

## Instalando o modulo "libcanberra-gtk-module" para que nao ocorra o erro: “failed to load module canberra-gtk-module”
sudo apt install libcanberra-gtk-module libcanberra-gtk3-module -y

## Instalando Programa para instalar e desinstalr versoes diferentes do Kernel
sudo add-apt-repository ppa:cappelikan/ppa -y
sudo apt update -y
sudo apt install mainline -y

## Instalando Chromium
sudo add-apt-repository ppa:savoury1/chromium -y
sudo apt update -y
sudo apt install chromium-browser -y

## Instalando maquina virtual Gnome Boxes
sudo apt install gnome-boxes -y

## Instalando ferramenta de Backup
sudo apt install luckybackup-data -y


echo -e "\n\n\n##################################################################### INSTALACAO  VIRTUALBOX ###################################################################"

sudo apt update -y
sudo apt install wget gpg -y
wget -O- https://www.virtualbox.org/download/oracle_vbox_2016.asc | sudo gpg --yes --output /usr/share/keyrings/oracle-virtualbox-2016.gpg --dearmor
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/oracle-virtualbox-2016.gpg] https://download.virtualbox.org/virtualbox/debian noble contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list
sudo apt update -y
sudo apt install virtualbox-7.2 -y


echo -e "\n\n\n###################################################################################################################################################################"



echo -e "\n\n\n################################################################ INSTALACAO  DO  NAVEGADOR  VIVALDI ################################################################"

wget -qO- https://repo.vivaldi.com/archive/linux_signing_key.pub | gpg --dearmor | sudo dd of=/usr/share/keyrings/vivaldi-browser.gpg
echo "deb [signed-by=/usr/share/keyrings/vivaldi-browser.gpg arch=$(dpkg --print-architecture)] https://repo.vivaldi.com/archive/deb/ stable main" | sudo tee /etc/apt/sources.list.d/vivaldi-archive.list
sudo apt update -y
sudo apt install vivaldi-stable -y

echo -e "\n\n\n###################################################################################################################################################################"



echo -e "\n\n\n############################################################## INSTALACAO  DO  NAVEGADOR  MICROSOFT EDGE ############################################################"

sudo apt update && sudo apt upgrade
cd /tmp && curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg && sudo install -o root -g root -m 644 microsoft.gpg /usr/share/keyrings/ && cd $HOME
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/microsoft.gpg] https://packages.microsoft.com/repos/edge stable main" | sudo tee /etc/apt/sources.list.d/microsoft-edge.list
sudo apt update -y
sudo apt install microsoft-edge-stable -y

echo -e "\n\n\n###################################################################################################################################################################"



echo -e "\n\n\n**********************************************************************************************************************************************************************************************************************"




echo -e "\n\n\n******************************************************************************************* INSTALANDO  IDES  DA  JETBRAINS ******************************************************************************************"

## https://github.com/JonasGroeger/jetbrains-ppa


## Adicionando a chave do repositorio
curl -s https://s3.eu-central-1.amazonaws.com/jetbrains-ppa/0xA6E8698A.pub.asc | gpg --dearmor | sudo tee /usr/share/keyrings/jetbrains-ppa-archive-keyring.gpg > /dev/null

## Adicionando o repositorios
echo "deb [signed-by=/usr/share/keyrings/jetbrains-ppa-archive-keyring.gpg arch=amd64] http://jetbrains-ppa.s3-website.eu-central-1.amazonaws.com any main" | sudo tee /etc/apt/sources.list.d/jetbrains-ppa.list > /dev/null

sudo apt update -y



echo -e "\n\n\n################################################################## INSTALACAO  INTELLIJ  ULTIMATE ##################################################################"

sudo apt install intellij-idea-community -y

## Mudando o arquivo executavel que é um shell script para o arquivo binario
sudo sed -ie 's\intellij-idea-ultimate .*%u\/opt/intellij-idea-ultimate/bin/idea\g' /usr/share/applications/intellij-idea-ultimate.desktop

echo -e "\n\n\n####################################################################################################################################################################"





echo -e "\n\n\n#################################################################### INSTALACAO  ANDROID  STUDIO ##################################################################"

## Adicionando repositorio do Android Studio
sudo add-apt-repository ppa:maarten-fonville/android-studio -y
sudo apt update -y

#Intalando Android Studio
sudo apt install android-studio -y

## Mudando o arquivo executavel que é um shell script para o arquivo binario
sudo sed -i s/studio.sh/studio/g /usr/share/applications/android-studio.desktop

sudo rm -r /opt/android-studio

echo -e "\n\n\n###################################################################################################################################################################"


echo "*******************************************************************************************************************************************************************************************************************************"




echo -e "\n\n\n******************************************************************************************* SUBSTITUINDO  FIREFOX  FLATPAK  PELO  NATIVO  ****************************************************************************"

flatpak uninstall org.mozilla.firefox -y

sudo mkdir -p /etc/apt/keyrings
wget -q https://packages.mozilla.org/apt/repo-signing-key.gpg -O- | sudo tee /etc/apt/keyrings/packages.mozilla.org.asc > /dev/null
echo "deb [signed-by=/etc/apt/keyrings/packages.mozilla.org.asc arch=amd64]  https://packages.mozilla.org/apt mozilla main" | sudo tee /etc/apt/sources.list.d/mozilla.list > /dev/null

echo "Package: firefox*"|sudo tee /etc/apt/preferences.d/mozilla
echo "Pin: origin packages.mozilla.org"|sudo tee -a /etc/apt/preferences.d/mozilla
echo "Pin-Priority: 1001"|sudo tee -a /etc/apt/preferences.d/mozilla

sudo apt update -y
sudo apt install firefox -y

echo "*******************************************************************************************************************************************************************************************************************************"




echo -e "\n\n\n************************************************************************ REMOVENDO ARQUIVOS DA PASTA TEMPLATES  ******************************************************************************************************"

rm ~/Templates/LibreOffice\ Calc.ods
rm ~/Templates/LibreOffice\ Draw.odg
rm ~/Templates/LibreOffice\ Impress.odp
rm ~/Templates/LibreOffice\ Writer.odt

echo "*******************************************************************************************************************************************************************************************************************************"




echo -e "\n\n\n*************************************************************************************** COMECANDO INSTALACAO DO RUBY *************************************************************************************************"


sudo apt update -y

sudo apt install git curl autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm6 libgdbm-dev libdb-dev -y


curl -fsSL https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-installer | bash

echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc

echo 'eval "$(rbenv init -)"' >> ~/.bashrc

echo -e "\n\n\n************************************************************************************ REINICIAR  O  COMPUTADOR*********************************************************************************************************"
