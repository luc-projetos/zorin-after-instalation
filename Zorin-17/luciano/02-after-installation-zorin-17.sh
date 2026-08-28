#!/bin/bash



## Entrando na para pasta de programas
cd ~/Downloads/Softwares/



echo -e "\n\n\n**************************************************************************************** CONTINUANDO  A  INSTALACAO  DO RUBY *****************************************************************************************"

rbenv -v

rbenv install -l

echo "Escolha a versao a ser instalada"
read versao
rbenv install $versao

## Instalacao global da Versao do Ruby
rbenv global $versao

echo "*******************************************************************************************************************************************************************************************************************************"




echo -e "\n\n\n******************************************************************************************** INSTALANDO  VMWARE WORKSTATION *******************************************************************************************"

sudo apt update -y
sudo apt install gcc-12 libgcc-12-dev

sudo apt install build-essential -y
sudo apt install gcc make -y

chmod +x VMware-Workstation-Full-17.6.4-24832109.x86_64.bundle
sudo ./VMware-Workstation-Full-17.6.4-24832109.x86_64.bundle

echo "*******************************************************************************************************************************************************************************************************************************"




echo -e "\n\n\n*************************************************************************************** INSTALANDO  VIRTUALBOX  EXTENSION  PACK **************************************************************************************"

sudo apt install virtualbox-ext-pack -y

echo "*******************************************************************************************************************************************************************************************************************************"




echo -e "\n\n\n************************************************************************************************* INSTALACAO  SDKMAN *************************************************************************************************"


## Instalando SDKMAN
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"

## Instalando Java
sdk install java 21.0.2-graalce
sdk install java 17.0.12-oracle
sdk install java 21.0.5-oracle

## Listar todas as versoes do JAVA
## sdk list java

## Instalando Groovy
sdk install groovy

## Ver versão do groovy
groovy -version

## Instalando Kotlin ultima versao
sdk install kotlin

## Ver versão do Kotlin instalado
kotlinc -version

## Instalando o Maven
sdk install maven 3.9.8

## Ver versão do Maven
mvn -v

## https://www.baeldung.com/java-sdkman-intro

echo "*******************************************************************************************************************************************************************************************************************************"




echo -e "\n\n\n****************************************************************************************** INSTALACAO  SPRING  TOOL  SUITE *******************************************************************************************"

chmod +x spring-tool-suite-4.28.1.RELEASE.deb
sudo dpkg -i spring-tool-suite-4.28.1.RELEASE.deb

## Instalando o Lombok
sudo ~/.sdkman/candidates/java/21.0.5-oracle/bin/java -jar lombok.jar

echo "*******************************************************************************************************************************************************************************************************************************"




echo -e "\n\n\n************************************************************************************************ SUBINDO  CONTAINERS *************************************************************************************************"


echo -e "\n\n\n######################################################### INSTALANDO  ORACLE #########################################################"

## Usermane: luc.oliveira343@gmail.ccom
## Password: 534680Lu*

## Logar na Oracle
docker login container-registry.oracle.com

cd ~/Installation/database-docker-compose/oracle/
sudo docker compose up -d

echo "###############################################################################################################################################"




echo -e "\n\n\n####################################################### INSTALANDO  SQLSERVER ########################################################"

cd ~/Installation/database-docker-compose/sql-server/
sudo docker compose up -d

echo "###############################################################################################################################################"




echo -e "\n\n\n######################################################### INSTALANDO  MYSQL ##########################################################"

cd ~/Installation/database-docker-compose/mysql/
sudo docker compose up -d

echo "###############################################################################################################################################"




echo -e "\n\n\n######################################################## INSTALANDO  MARIADB #########################################################"

cd ~/Installation/database-docker-compose/mariaDB
sudo docker compose up -d

echo "###############################################################################################################################################"




echo -e "\n\n\n####################################################### INSTALANDO  POSTGRESQL #######################################################"

cd ~/Installation/database-docker-compose/postgres/
sudo docker compose up -d

echo "###############################################################################################################################################"




echo -e "\n\n\n######################################################### INSTALANDO  MONGO  #########################################################"

cd ~/Installation/database-docker-compose/mongo
sudo docker compose up -d

echo "###############################################################################################################################################"




echo "*******************************************************************************************************************************************************************************************************************************"



## Entrando na para pasta de programas
cd ~/Downloads/Softwares/



echo -e "\n\n\n************************************************************************************************** INSTALACAO  PHP ***************************************************************************************************"

sudo add-apt-repository ppa:ondrej/php -y
sudo apt update -y
sudo apt install php8.2 -y
php --version

echo "*******************************************************************************************************************************************************************************************************************************"




echo -e "\n\n\n***************************************************************************************************INSTALACAO  R **************************************************************************************************"

sudo apt update -y
sudo apt install r-base r-base-dev -y

echo "*******************************************************************************************************************************************************************************************************************************"




echo -e "\n\n\n************************************************************************************************* INSTALACAO  PYTHON *************************************************************************************************"



echo "*******************************************************************************************************************************************************************************************************************************"

sudo apt update -y
sudo apt install python3 python3-pip python3-venv -y

echo -e "\n************ VERSAO  DO  PYTHON ************"
python3 --version


echo -e "\n\n\n************************************************************************************************* INSTALACAO  DART *************************************************************************************************"

## Link instalação do DART
## https://dart.dev/get-dart

sudo apt update -y

sudo apt install apt-transport-https -y

wget -qO- https://dl-ssl.google.com/linux/linux_signing_key.pub \
  | sudo gpg  --dearmor -o /usr/share/keyrings/dart.gpg

echo 'deb [signed-by=/usr/share/keyrings/dart.gpg arch=amd64] https://storage.googleapis.com/download.dartlang.org/linux/debian stable main' \
  | sudo tee /etc/apt/sources.list.d/dart_stable.list

sudo apt update -y

sudo apt install dart -y

echo -e "\n\n\n******************************************************************************** CONFIGURAR  CELULAR  PARA  DESENVOLVIMENTO  ANDROID *********************************************************************************"

sudo usermod -aG plugdev $LOGNAME
sudo apt install android-sdk-platform-tools-common -y
echo 'eval "$(rbenv init -)"' >> ~/.bashrc

echo "*******************************************************************************************************************************************************************************************************************************"




echo -e "\n\n\n************************************************************************************************** INSTALANDO  ADB ***************************************************************************************************"

## Instalando ADB
sudo apt update -y
sudo apt install adb -y
sudo apt install libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386 -y
sudo apt install qemu-kvm -y
sudo adduser $USER kvm

echo "*******************************************************************************************************************************************************************************************************************************"




echo -e "\n\n\n ********************************************************************************* INSTALANDO  VISUAL  STUDIO  CODE  E  EXTENCOES  **********************************************************************************"


sudo dpkg -i code_1.94.2-1728494015_amd64.deb
sudo apt --fix-broken install -y


## INSTALANDO  EXTENÇÕES  DO  VISUAL  STUDIO  CODE

## Instalando Material Icon themes
code --install-extension PKief.material-icon-theme


## Instalando ESlint
code --install-extension dbaeumer.vscode-eslint

## Instalando extencao para digitar so o inicio da tag HTML e depois dar TAB para completar
code --install-extension abusaidm.html-snippets


## Instalando o Live Preview para ver as paginas HTML no Visual Studio Code
code --install-extension ms-vscode.live-server


## Instlando GitLens
code --install-extension eamodio.gitlens

## Instlando Tabnine
code --install-extension TabNine.tabnine-vscode

## Suporte a arquivos yml
code --install-extension redhat.vscode-yaml


## Live Server para mostrar modificacoes na pagina
code --install-extension ritwickdey.LiveServer

## Executar shell Script
#code --install-extension YasharHabibi.run-bash-script

## Instalando Tema Dracula
code --install-extension dracula-theme.theme-dracula

## Instalando o Prettier que serve para formatador de codigo
code --install-extension esbenp.prettier-vscode

code --install-extension Dart-Code.flutter


## INSTALANDO  PARENTESES  AUTOMATICOS  NOS  METODOS  JAVASCRIPT  E  TYPESCRIPT

echo '{' | tee ~/.config/Code/User/settings.json

## parenteses atumomaticos nas funcoes do JavaScript
echo '"javascript.suggest.completeFunctionCalls": true,' | tee -a ~/.config/Code/User/settings.json

## parenteses atumomaticos nos metodos do TypeScript
echo '"typescript.suggest.completeFunctionCalls": true,' | tee -a ~/.config/Code/User/settings.json


echo '}' | tee  -a ~/.config/Code/User/settings.json

echo "*******************************************************************************************************************************************************************************************************************************"




echo -e "\n\n\n************************************************************************************************ INSTALANDO  FLUTTER *************************************************************************************************"

if [ -e flutter_linux_3.24.3-stable.tar.xz ];
then
    echo "O diretorio  ~/Wallpaper/  ja existe"
else
    echo -e "\n\n\n\n Flutter"
    wget https://github.com/lucgithub343/flutter/releases/download/Flutter/flutter_linux_3.24.3-stable.tar.xz

    sudo tar xf flutter_linux_3.24.3-stable.tar.xz -C /opt/

    sudo apt-get install curl git unzip xz-utils zip libglu1-mesa -y

    sudo apt install clang -y
    sudo apt install ninja-build -y
    sudo apt install libgtk-3-dev -y
    ## flutter doctor --android-licenses
    ## flutter config --jdk-dir /home/luciano/.sdkman/candidates/java/17.0.12-oracle/

    sudo apt-get install lib32stdc++6 libstdc++6 libcurl4-openssl-dev libglu1-mesa -y

    sudo apt-get install \
         libc6:amd64 libstdc++6:amd64 \
         libbz2-1.0:amd64 libncurses5:amd64 -y

    echo "export PATH=\$PATH:/opt/flutter/bin" | sudo tee /etc/profile.d/flutter.sh
fi


echo "*******************************************************************************************************************************************************************************************************************************"




echo -e "\n\n\n************************************************************************************************ INSTALANDO  POSTMAN *************************************************************************************************"

curl https://gist.githubusercontent.com/SanderTheDragon/1331397932abaa1d6fbbf63baed5f043/raw/postman-deb.sh | sh

## URL do Script
## https://gist.github.com/SanderTheDragon/1331397932abaa1d6fbbf63baed5f043

echo "*******************************************************************************************************************************************************************************************************************************"




echo -e "\n\n\n************************************************************************************************* INSTALANDO  NODE.JS ************************************************************************************************"

curl -fsSL https://deb.nodesource.com/setup_24.x | sudo -E bash -
sudo apt install nodejs -y
sudo npm install npm@latest -g

echo  "*******************************************************************************************************************************************************************************************************************************"




echo -e "\n\n\n************************************************************************************************* INSTALANDO  ANGULAR ************************************************************************************************"

sudo npm install npm@latest -g

sudo npm install -g @angular/cli@latest

#### Como ver versao do Angular
ng version

echo "*******************************************************************************************************************************************************************************************************************************"




echo -e "\n\n\n*********************************************************************************************** INSTALANDO  TYPESCRIPT ***********************************************************************************************"

sudo npm install -g typescript

## Como ver versao do Typescript
tsc -v

echo "*******************************************************************************************************************************************************************************************************************************"




echo -e "\n\n\n************************************************************************************************** AMAZON  CKD  CLI **************************************************************************************************"

sudo npm install -g aws-cdk

## Como ver versao do AWS CDK
cdk --version

echo "*******************************************************************************************************************************************************************************************************************************"




echo -e "\n\n\n************************************************************************************************** AMAZON  AWS  CLI ***************************************************************************************************"

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

## Mostrando versao
aws --version

echo "*******************************************************************************************************************************************************************************************************************************"





echo -e "\n\n\n************************************************************************************* ADICIONANDO  SUPORTE  EXTENDIDO  AO  ZORIN *************************************************************************************"

## https://ubuntu.com/pro/subscribe

sudo apt update -y
sudo apt install ubuntu-advantage-tools -y
sudo apt update -y

sudo pro attach C1euiqRh17uebyf3GVTv71hYEtN2b
sudo apt update -y

echo "*******************************************************************************************************************************************************************************************************************************"




echo -e "\n\n\n******************************************************************************************* INSTALANDO  PACOTES  FLATPACK ********************************************************************************************"

flatpak install flathub dev.aunetx.deezer -y
flatpak install flathub org.gnome.Solanum -y
flatpak install flathub com.bitwarden.desktop -y
flatpak install flathub com.github.IsmaelMartinez.teams_for_linux -y

echo "*******************************************************************************************************************************************************************************************************************************"



## Entrando na para pasta de programas
cd ~/Downloads/Softwares/



echo -e "\n\n\n********************************************************************************************* INSTALANDO  ARQUIVOS  .DEB *********************************************************************************************"

## Tornando todos os arquivos .deb
## em arquivos executavies
chmod +x *.deb


## 4K Video Downloader
sudo dpkg -i 4kvideodownloaderplus_1.8.5-1_amd64.deb
sudo apt --fix-broken install -y


## Atom
sudo dpkg -i atom-amd64.deb
sudo apt --fix-broken install -y
sudo sed -i 's\env ATOM_DISABLE_SHELLING_OUT_FOR_ENVIRONMENT=false /usr/bin/atom %F\env ATOM_DISABLE_SHELLING_OUT_FOR_ENVIRONMENT=false /usr/bin/atom %F --in-process-gpu\g' /usr/share/applications/atom.desktop


## Balena Etcher
sudo dpkg -i balena-etcher_1.19.4_amd64.deb
sudo apt --fix-broken install -y
sudo sed -i 's\Icon=balena-etcher\Icon=/opt/balena-etcher-icon/Etcher-icon.png\g' /usr/share/applications/balena-etcher.desktop


## BR-Modelo
sudo dpkg -i br-modelo-3.3.2.deb
sudo apt --fix-broken install -y


## HeidiSQL
sudo dpkg -i HeidiSQL_12.11.1.167.deb
sudo apt --fix-broken install -y


## JDK
sudo dpkg -i jdk-21_linux-x64_bin.deb
sudo apt --fix-broken install -y


## Chrome
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt --fix-broken install -y


## Dbeaver
sudo dpkg -i dbeaver-le_23.2.0_amd64.deb
sudo apt --fix-broken install -y


## Evolve
sudo dpkg -i evolve-1.5.1.deb
sudo apt --fix-broken install -y


## Insync
sudo dpkg -i insync_3.9.4.60020-jammy_amd64.deb
sudo apt --fix-broken install -y


## Iriun Webcam
sudo dpkg -i iriunwebcam-2.8.2.deb
sudo apt --fix-broken install -y


## Jasper Soft Studio
sudo dpkg -i jasper-soft-studio-7.0.3.deb
sudo apt --fix-broken install -y


## Microsoft Edge
##sudo dpkg -i microsoft-edge-stable_130.0.2849.46-1_amd64.deb
##sudo apt --fix-broken install -y

## Mysql workbench
sudo dpkg -i mongodb-compass_1.49.15_amd64.deb
sudo apt --fix-broken install -y


## Mysql workbench
sudo dpkg -i mysql-workbench-community_8.0.42-1ubuntu22.04_amd64.deb
sudo apt --fix-broken install -y


# Only Office
sudo dpkg -i onlyoffice-desktopeditors_amd64.deb
sudo apt --fix-broken install -y
sudo sed -i '/Terminal=false/a StartupWMClass=DesktopEditors' /usr/share/applications/onlyoffice-desktopeditors.desktop


## IDE para linguage R
sudo dpkg -i rstudio-2024.12.0-467-amd64.deb
sudo apt --fix-broken install -y


## Star UML
sudo dpkg -i StarUML_6.1.0_amd64.deb
sudo apt --fix-broken install -y




echo -e "\n\n\n###################################################  INSTALANDO  APACHE  NETBEANS ####################################################"

## Apache Netbeans
sudo dpkg -i apache-netbeans_24-1_all.deb
sudo apt --fix-broken install -y


## Baixando repositorio Classes do Git Hub
if [ -d ~/.netbeans/24/config/Templates/Classes/ ];
then
    echo "O diretorio  ~/.netbeans/24/config/Templates/Classes/  ja existe"
else

  ## Criando a pasta onde vao ficar os templates modificados
  mkdir -p ~/.netbeans/24/config/Templates/

  echo -e "\n\n\n\n Clonando repositorio Classes do Git Hub"
  git clone https://github.com/lucgithub343/Classes.git
  cp -r Classes/ ~/.netbeans/24/config/Templates/
fi

echo "###############################################################################################################################################"


echo "*******************************************************************************************************************************************************************************************************************************"




echo -e "\n\n\n **************************************************************************************** ADICIONANDO  TERMINATOR  AO  MENU  ****************************************************************************************"

sudo apt install python3-pip -y
pip install nautilus-open-any-terminal
nautilus -q

glib-compile-schemas ~/.local/share/glib-2.0/schemas/
gsettings set com.github.stunkymonkey.nautilus-open-any-terminal terminal terminator
gsettings set com.github.stunkymonkey.nautilus-open-any-terminal keybindings '<Ctrl><Alt>t'
gsettings set com.github.stunkymonkey.nautilus-open-any-terminal new-tab true
gsettings set com.github.stunkymonkey.nautilus-open-any-terminal flatpak system

echo -e "\n\n\n********************************************************************************************** REINICIAR  O  COMPUTADOR **********************************************************************************************"
