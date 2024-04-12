#!/bin/bash 
sudo apt -y install git gh 2>/dev/null;
gpg -o /ants/sh/gh.txt -d /ants/sh/gh.gpg
gh auth login --with-token < /ants/sh/gh.txt
gh auth status; echo; rm /ants/sh/gh.txt;
