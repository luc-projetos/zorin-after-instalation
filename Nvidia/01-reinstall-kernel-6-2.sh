#!/bin/bash

sudo apt install --reinstall --yes linux-headers-6.2.0-39-generic linux-image-6.2.0-39-generic linux-modules-6.2.0-39-generic linux-modules-extra-6.2.0-39-generic
sudo apt-mark hold linux-headers-6.2.0-39-generic linux-image-6.2.0-39-generic linux-modules-6.2.0-39-generic linux-modules-extra-6.2.0-39-generic

sudo apt clean -y
sudo apt autoremove -y
