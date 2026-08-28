#!/bin/bash

sudo apt install --reinstall --yes linux-headers-6.5.0-21-generic linux-image-6.5.0-21-generic linux-modules-6.5.0-21-generic linux-modules-extra-6.5.0-21-generic
sudo apt-mark hold linux-headers-6.5.0-21-generic linux-image-6.5.0-21-generic linux-modules-6.5.0-21-generic linux-modules-extra-6.5.0-21-generic

sudo apt clean -y
sudo apt autoremove -y
