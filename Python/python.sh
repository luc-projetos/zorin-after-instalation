#!/bin/bash


echo -e "\n\n\n************************************************************************************************* INSTALACAO  PYTHON *************************************************************************************************"

sudo apt update -y

sudo apt install -y software-properties-common \
                    build-essential \
                    libffi-dev \
                    libssl-dev \
                    zlib1g-dev \
                    libncurses5-dev \
                    libncursesw5-dev \
                    libreadline-dev \
                    libsqlite3-dev \
                    libgdbm-dev \
                    libdb5.3-dev \
                    libbz2-dev \
                    libexpat1-dev \
                    liblzma-dev \
                    libffi-dev \
                    libssl-dev

sudo add-apt-repository ppa:deadsnakes/ppa -y

sudo apt update -y

sudo apt install -y python3.12 python3.12-venv

python3.12 --version

sudo apt install python3.12-distutils -y

wget https://bootstrap.pypa.io/get-pip.py

sudo python3.12 get-pip.py

pip3 --version

sudo apt autoremove -y

echo -e "\n************ VERSAO  DO  PYTHON ************"
python3 --version

echo "*******************************************************************************************************************************************************************************************************************************"
