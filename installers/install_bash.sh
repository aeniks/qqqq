#!/bin/bash 
if [ $UID = 0 ]; then sudo chown $SUDO_USER /ants -R; sudo chmod 775 /ants -R; else sudo chown $USER /ants -R; sudo chmod 775 /ants -R; fi; 
sudo cp /ants/sh/bash_etc.sh /etc/bash.bashrc
sudo cp /ants/sh/bashrc.sh ~/.bashrc