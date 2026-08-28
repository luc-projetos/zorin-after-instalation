#!/bin/bash


## Download GPU Radeon R5 230
if [ -e gpu-radeon-r5-230.deb ];
then
    echo "O arquivo  gpu-radeon-r5-230.deb  ja existe"
else
    echo -e "\n\n\n\n GPU Radeon R5 230"
    wget https://github.com/lucgithub343/gpu/releases/download/GPU/gpu-radeon-r5-230.deb
fi
