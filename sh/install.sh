#!/bin/bash
###########
echo -ne "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n
\t -- Welcome to Installer X ";
read -re "ok"; if [ $ok -eq y }; then
echo ok;
mkdir /ants -m 775; cd /;
git clone https://github.com/bobokrull/ants||apt install -yqq git 2>x && git clone https://github.com/bobokrull/ants
fi
cd /ants/; echo -ne "\n\n\n\n\n\n\n\n"
