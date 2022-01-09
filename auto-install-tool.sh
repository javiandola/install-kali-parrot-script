#!/bin/bash
USUARIO=$(whoami)
RUTA=/home/$USUARIO/tool

#Actualizacion del sistema e instalacion de software
sudo apt update ; sudo apt upgrade -y
sudo apt install -y html2text tor proxychains nmap hydra netdiscover curl jq links aircrack-ng crunch pdfcrack git python2.7 python3 bat cupp

#Carpeta de herramientas (tool)
mkdir /home/$USUARIO/tool

#Fluxion
git -C /home/$USUARIO/tool/ clone https://github.com/FluxionNetwork/fluxion.git
sudo ln -s /home/$USUARIO/tool/fluxion/fluxion.sh /usr/bin/fluxion

#Airgeddon
git -C /home/$USUARIO/tool/ clone https://github.com/v1s1t0r1sh3r3/airgeddon.git
sudo ln -s /home/$USUARIO/tool/airgeddon/airgeddon.sh /usr/bin/airgeddon

#TheFatRat
git -C /home/$USUARIO/tool/ clone https://github.com/Screetsec/TheFatRat.git

#Fsociety
git -C /home/$USUARIO/tool/ clone https://github.com/Manisso/fsociety.git
sudo bash /home/$USUARIO/tool/fsociety/install.sh 
sudo ln -s /home/$USUARIO/tool/fsociety/fsociety.py /usr/bin/fsociety

#wifiCrack (S4vitar)
git -C /home/$USUARIO/tool/ clone https://github.com/s4vitar/wifiCrack.git

#Sherlock
git -C /home/$USUARIO/tool/ clone https://github.com/sherlock-project/sherlock.git
sudo python3 -m pip install -r /home/$USUARIO/tool/sherlock/requirements.txt
chmod +x /home/$USUARIO/tool/sherlock/sherlock/sherlock.py
sudo ln -s /home/$USUARIO/tool/sherlock/sherlock/sherlock.py /usr/bin/sherlock

#Portx
git -C /home/$USUARIO/tool/ clone https://github.com/javiandola/portx.git
chmod +x /home/$USUARIO/tool/portx/portx.sh
sudo ln -s /home/$USUARIO/tool/portx/portx.sh /usr/bin/portx

#Kalitorify
git -C /home/$USUARIO/tool/ clone https://github.com/brainfucksec/kalitorify.git
cd /home/$USUARIO/tool/kalitorify/
sudo make install
