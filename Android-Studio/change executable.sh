#!/bin/bash

sudo sed -i s/studio.sh/studio/g /usr/share/applications/android-studio.desktop
sudo rm -r /opt/android-studio
