#!/bin/bash

sudo apt update -y
sudo apt install gcc-12 libgcc-12-dev

sudo apt install build-essential -y 
sudo apt install gcc make -y

chmod +x VMware-Workstation-Full-17.6.4-24832109.x86_64.bundle
sudo ./VMware-Workstation-Full-17.6.4-24832109.x86_64.bundle
