#!/bin/bash 
cp /ants/sh/bashrc.sh ~/.bashrc

if [ "$(id -u)" -eq 0 ]; then us='#'; else us='$'; fi;
chown $SUDO_USER: ~/.bashrc 2>/dev/null;