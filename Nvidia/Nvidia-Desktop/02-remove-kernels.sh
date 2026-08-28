#!/bin/bash

sudo apt purge linux-image-6.8.0-40-generic -y
sudo apt purge linux-image-6.8.0-52-generic -y

dpkg -l | grep linux-image
