#!/bin/bash

dpkg -l | grep linux-image

sudo apt update -y
sudo ubuntu-drivers devices
sudo apt install -y nvidia-driver-535
