#!/bin/bash

sudo apt update -y
sudo apt install bluez bluez-tools -y
sudo apt update -y
sudo apt install blueman -y
sudo modprobe btusb
sudo systemctl start bluetooth.service
sudo systemctl enable bluetooth.service
sudo systemctl status bluetooth.service
