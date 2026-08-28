#!/bin/bash


######################################################## INSTALACAO  DO  NAVEGADOR LIBRE-WOLF #######################################################

sudo apt update -y
sudo apt install extrepo -y
sudo extrepo enable librewolf
sudo apt --allow-releaseinfo-change update

sudo apt update -y

sudo apt install librewolf -y

########################################################### FIM  DA  NAVEGADOR LIBRE-WOLF ###########################################################
