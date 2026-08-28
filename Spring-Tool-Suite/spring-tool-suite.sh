#!/bin/bash

echo -e "\n\n\n *************************************  INSTALANDO  SPRING TOOLS  SUITE  COM  LOMBOK **************************************************"

## Selecionando qual versão do java vai ser a padrao
sudo update-alternatives --config java

## Spring tool Suite
sudo dpkg -i spring-tool-suite-4.22.0.RELEASE.deb
sudo apt --fix-broken install -y
sudo rm /.eclipseproduct

## Instalando Lombok no Spring Tools Suite
chmod +x lombok-1.18.32.jar
sudo ~/.sdkman/candidates/java/21.0.4-oracle/bin/java -jar lombok-1.18.32.jar

## Removendo o arquivo .eclipseproduct
## sudo rm /.eclipseproduct

echo "***********************************************************************************************************************************************"
