#!/bin/bash

echo -e "\n\n\n********************************************************************************************* INSTALANDO  VMWARE  PLAYER *********************************************************************************************"

## Dependencias do VMware
sudo apt update -y
sudo apt install build-essential -y
sudo apt install manpages-dev  -y

chmod +x VMware-Workstation-Full-17.5.1-23298084.x86_64.bundle
sudo ./VMware-Workstation-Full-17.5.1-23298084.x86_64.bundle

## Alterando icone  do VMwareskypeforlinux-64.deb
## sudo mkdir /opt/vmware-icon/
## sudo cp vmware.png /opt/vmware-icon/
## sudo sed -i 's\vmware-player\/opt/vmware-icon/vmware.png\g' /usr/share/applications/vmware-player.desktop

## Abrindo o VMware player via terminal
vmware

## Consertando o problema de 3d não suportado
if grep -qi 'mks.gl.allowBlacklistedDrivers = "TRUE"' ~/.vmware/preferences;
then
    echo "VMWare ja configurado"
else
    echo 'mks.gl.allowBlacklistedDrivers = "TRUE"' >> ~/.vmware/preferences
fi

## sudo apt-get install open-vm-tools
echo -e "\n\n\n**********************************************************************************************************************************************************************************************************************"
