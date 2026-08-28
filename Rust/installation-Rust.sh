#!/bin/bash


echo -e "\n\n\n***************************************************** INSTALANDO  RUST ***************************************************************"

sudo apt update -y

curl --proto '=https' --tlsv1.3 https://sh.rustup.rs -sSf | sh

source "$HOME/.cargo/env"

rustc --version

sudo apt update -y

sudo apt install build-essential -y

rustup update

echo "***********************************************************************************************************************************************"