#!/bin/bash
# aaaa.sh
# alias for bash terminal
# by 12ants.github.com
## tput sc; tput cup 36 $((COLUMNS-28)); echo -en "loaded $(tput setaf 6)/etc/aaaa"; tput rc; 
export EDITOR='micro'; 
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'  
alias ee="echo "
alias ll='ls -clat' 
export PATH="$PATH:/usr/games"
export bold=$(tput bold) dim=$(tput dim) so=$(tput smso) noso=$(tput rmso) rev=$(tput rev) re=$(tput sgr0) normal=$(tput sgr0) \
redb=$(tput setab 1) greenb=$(tput setab 2) yellowb=$(tput setab 3) blueb=$(tput setab 4) purpleb=$(tput setab 5) cyanb=$(tput setab 6) \
grayb=$(tput setab 7) red=$(tput setaf 1) green=$(tput setaf 2) yellow=$(tput setaf 3) blue=$(tput setaf 4) purple=$(tput setaf 5) \
cyan=$(tput setaf 6) gray=$(tput setaf 7) white=$(tput setaf 7 bold) pink=$(tput setaf 5 bold) darkblue=$(tput setab 5 bold) blink=$(tput blink) \
left2=$(tput cub 2) up1=$(tput cuu1) pinkb=$(tput setab 5 bold) 
alias ls='ls --color=auto --group-directories-first'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ll='ls -caklhuptr'
alias la='ls -A'
alias l='ls -CF'
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
##
## MOVE AROUND
alias ants12='bash <(wget -O- dub.sh/ants12)'
alias pppp='tput cuu 8 ed; echo -e "\n\n\n\n\t ";'
alias psp='echo -e "\n\n\n\n\n\n\n"; tput cuu 4
'
# old -- alias psp='echo -e "\n\n\n\n\n\n\n"; tput cuu 4;  '
##
alias rainbow='echo;echo;echo; tput cuu 2; read -ep "$c2 " "rainbow"; rb "$rainbow";'
alias cds='
psp read -ep "$c2 "$rev"goto:$re " -i "$PWD" "goto"; 
mkdir -p $folder -m 775; 
#chown "$SUDO_USER":"$USER" "$goto"; 
cd $goto; echo -e "\n\t $cyan$bold> $pink$PWD$cyan <$re\n\t * * * *\n"; ls -caklhuptr --group-directories-first;'
alias ff='
psp read -ep "$c2 "$rev"new folder?$re " -i "$PWD" "folder"; 
mkdir -p $folder -m 775; 
chown "$SUDO_USER":"$USER" "$folder"; 
cd $folder; echo -e "\n\t $cyan$bold> $pink$PWD$cyan <$re\n\t * * * *\n"; ls -caklhuptr --group-directories-first;'
alias oooo="rrf; fortune; tput sgr0;"
alias rr="sudo -s"
alias besh="micro /etc/bash.bashrc"
alias mm="micro"
alias ee="echo "
alias rw="wotd"
alias zip='echo -ne "\n\t $c2 "; read -ep "zip folder: " "zipf"; 
echo -ne "\n\t $c2"; read -ep "to: " -i "$(wotd|tr -d "''").zip" "zipz";
zip -r $zipz $zipf;'
##
alias qq='cd ..; echo -ne "\t$pinkb $PWD $re\n"; ll -h; echo -ne "\t$pinkb $PWD $re\n";'
alias bb="btop --utf-force"
############################################
#### GITHUB ################################
alias kk='read -ep ">_ " 'kl'; printf "$kl"|gh gist create -f $(date +%A_%y_%m_%d_%__0k_%M.sh); echo \n\n\t$c2 !$/raw\n\n""'
alias kf='guf=$(gum file);echo -e "\n\n\n\n\n"; tput cuu 2; read -ep "$c2 title: $cyan" -i "$(date +%A%y%m%d%0k%M.sh)" "ttll";cat $guf|gh gist create -f $ttll - '
############################################
#### SSH ###################################
############################################
#### ANTS ##################################
alias aaaa='micro /ants/alias.sh && read -t2 -n1 -ep "update /ants/alias.sh? " ab && source /ants/alias.sh'
alias bbbb='micro /ants/bash.sh && read -t2 -n1 -ep "update /ants/bash.sh? " ba && source /ants/bash.sh'
alias cccc='micro /ants/functions.sh && read -t2 -n1 -ep "update /ants/functions.sh? " ba && source /ants/functions.sh'
alias uu='sudo apt update && sudo apt upgrade -y && sudo apt -y autoremove; sudo apt full-upgrade -y && sudo snap refresh && jp2a /boot/grub/tard.jpg|pv --rate-limit=2222 --quiet'
alias rb='sudo wall "gg"; sleep 1; sudo systemctl reboot'
##
alias www="www-browser"
############################################
#### WEATHER ###############################
# vv='curl -sm2 http://wttr.in/sthlm?format=%l:+%c+%f'
alias vvvv='curl http://wttr.in/stockholm '
alias vv='tput sc; tput cup 4 $((COLUMNS-28)) el; tput cup 5 $((COLUMNS-28)) el; tput cuf 2; 
curl -sm2 http://wttr.in/sthlm?format=%l:+%c+%t+/+%f++; tput cup 6 $((COLUMNS-28)) el; tput sgr0 rc'
#curl http://wttr.in/Stockholm?format=%l:+%c%t+-+%C++-++Feels+like:+%f++H:+%h; 
############################################
## MISC_STUFF ##############################
alias fill='seq -s " _ " 2222'
alias tputhelp='cat /ants/sh/tputhelp.txt|(pager --omit-header)'
############################################
## RANDOM_STUFF ############################
# export rnd1="(($RANDOM%99))"
# alias rnd1="(shuf 0-222 -n1)"
alias rr1='(echo $SRANDOM|tail -c2)'
alias rr2='(echo $RANDOM|tail -c2)'
alias rrf='tput setaf $(rr1)'
alias rrb='tput setab $(rr2)'
############################################
#### IP_STUFF ##############################
alias ports='echo -e "\n\n   $cyan-$re Open ports on local network"$cyan" -"$re" \n"; echo -e " -- -- -- -- -- -- -- $(portsopen;  echo " -- -- -- -- -- -- --")"|column -tLo "$(tput sgr0)|  " -tLo "  $(tput sgr0)||   " -H 1,2,3,4,8; echo -e "\n\n" '
#export ipn="$(hostname -I | tail -c3)"
#export ipnet="$(hostname -I|tr  " " "\n"|head -n1)"
#export ipnet=$(hostname -I|tr " " "\n"|head -n1)
#export ipn=$(hostname -I|tr " " "\n"|head -n1|tail -c2)
alias iplocal="ifconfig | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p'|tr "\n" "-""
iplocal=$(iplocal|tail -n1)
alias ipnet="tput setab $ipn; echo -n $ipnet; tput sgr0;"
alias ippub="wget -qO- ifconfig.me"
alias ipports="sudo lsof -i -P -n"
##
alias ipa='echo -ne "
\t$(rrf)------$(tput setaf 2) Public IP: $(tput sgr0)$(ippub)$(tput setaf 6) 
\t$(tput setaf $(rr2))---------------------------------- 
\t$(rrf)------$(tput setaf 4) Network IP: $(tput sgr0)$(iplocal|tr "\n" "\t")$(tput sgr0)"; echo'
############################################

##
# alias ali='psp read -ep "$c2 " -i "alias " "ali"; echo "$ali" >> /etc/aaaa.sh; echo -e "\n $ali \n " '
# alias ali='psp read -ep "$c2 " -i "ali " "ali";
# echo "$ali" >> /etc/aaaa.sh; echo -e "\n $ali \n " '
alias ali='psp read -ep "$c2 alias name: " "alia"; 
psp read -ep "$c2 alias $alia=" -i ""'""""'"" "aliq"; 
echo "alias $alia=$aliq" >> /ants/alias.sh; 
echo -e "\n $alia=""$aliq"" \n "; source /ants/alias.sh'
############################################
############################################
alias fakta='neofetch 2>/dev/null '
alias gg='psp read -ep "$c2 " -i "google: " "google"; googler "https://www.google.com/search?q=$google"'
alias zz="ranger 2>/dev/null" 
alias pp='echo ____pinging_moto8____; for i in {1..18}; do sleep 1; 
kdeconnect-cli -n "moto g(8)" --ping-msg "  >_<  "; sleep 1; done'
alias clone='
psp read -ep "$c2 "$rev"clone where folder?$re " -i "$PWD/" "folder"; mkdir -p $folder -m 775 2>/dev/null; 
chown "$SUDO_USER":"$USER" "$folder"; cd $folder; echo -e "\n\t $cyan$bold> $pink$PWD/$cyan <$re\n\t * * * *\n"; ll -caklup;
####
psp read -ep "$c2 CLONE: https://github.com/12ants/" -i "" "clone"; 
git clone https://github.com/12ants/$clone; cd $clone 2>/dev/null; echo -e "\n\t $cyan$bold> $pink$PWD/$cyan <$re\n\t * * * *\n"; ls -a; echo;echo; '
# alias ww='ee;ee "$cyan";w;ee;ee "$blue"; ps all;ee "$re $PWD"'
alias ww='echo;echo "  LAST LOGINS";echo;sudo lastb -axdwn 4;echo;echo "       = = = = = = == ";echo; sudo last -wxdFan4;echo;landscape-sysinfo; echo;echo "    = = = = = =   ";echo'
alias gt='read -n1 -ep "  $c2  g/t  $(systemctl get-default)  " "gt"; if [ $gt == t ]; then sudo systemctl set-default multi-user.target; else sudo systemctl set-default graphical.target; fi ; echo gg'
alias xxxx='startx'
alias cc=cds
alias an12='bash <(wget -O- dub.sh/ants12)'
alias aeniks='wget -Ok dub.sh/aeniks; . k;'
alias greet='echo -ne "\t$c2 Welcome back $darkblue $USER,$re today is:$blue "; date; echo'
alias admins='read -ep " $c2 Add as admin-user: " "newsudo" && echo "$newsudo ALL=(ALL:ALL) ALL " >> "/etc/sudoers"'
alias ants='
read -p "$c2 update perms on /ants/? "; 
if [ $UID = 0 ]; then 
sudo chown $SUDO_USER:ants /ants -R; 
sudo chmod 775 /ants -R; 
else sudo chown $USER:ants /ants -R; 
sudo chmod 775 /ants -R; fi; cd /ants'


alias aa='
if [ $UID = 0 ]; then 
sudo chown $SUDO_USER:ants /ants -R; 
sudo chmod 775 /ants -R; 
else sudo chown $USER:ants /ants -R; 
sudo chmod 775 /ants -R; fi; cd /ants
cd /ants; echo; pwd|pr --omit-header --indent=4|lolcat -p 2; echo;  
echo -e "$cyan$dim --------$re"; ls -Alhkct; echo -e "$cyan$dim --------$re \n"'

alias uuuu='cd /uuuu; echo; pwd|pr --omit-header --indent=4|lolcat -p 2; echo;  echo -e "$cyan$dim --------$re"; ls -Alhkct; echo -e "$cyan$dim --------$re \n"'
cows=($(ls /usr/share/cowsay/cows|sed s/.cow//g)); 
alias qw="/usr/games/fortune"


alias push='git add -A; git commit -a -m $(wotd); git push'
alias pull='git pull'





