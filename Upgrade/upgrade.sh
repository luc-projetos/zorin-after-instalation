#!/bin/bash

sudo apt update -y
sudo apt upgrade -y

## Mudando o arquivo executavel que é um shell script para o arquivo binario da IDE Intellij Ultimate
sudo sed -ie 's\intellij-idea-ultimate .*%u\/opt/intellij-idea-ultimate/bin/idea\g' /usr/share/applications/intellij-idea-ultimate.desktop


## Mudando o arquivo executavel que é um shell script para o arquivo binario da IDE PhpStorm
sudo sed -ie 's\phpstorm .*%u\/opt/phpstorm/bin/phpstorm\g' /usr/share/applications/phpstorm.desktop


## Mudando o arquivo executavel que é um shell script para o arquivo binario da IDE PyCharm
sudo sed -ie 's\pycharm-professional .*%u\/opt/pycharm-professional/bin/pycharm\g' /usr/share/applications/pycharm-professional.desktop


## Mudando o arquivo executavel que é um shell script para o arquivo binario da IDE Android Studio
sudo sed -i s/studio.sh/studio/g /usr/share/applications/android-studio.desktop

sudo rm -r /opt/android-studio
