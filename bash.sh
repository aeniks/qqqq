#!/bin/bash
## written by 12ants.github.io
#########################
## -- CUSTOM LINUX --  ##
#########################
## tput sc; tput cup 7 $((COLUMNS-28)); echo -en "loaded $(tput setaf 7)/etc/bbbb"; tput rc;
export EDITOR='micro'; 
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'  
alias ee="echo ";
alias ll='ls -clat';
export bold=$(tput bold) dim=$(tput dim) so=$(tput smso) noso=$(tput rmso) rev=$(tput rev) re=$(tput sgr0) normal=$(tput sgr0) \
redb=$(tput setab 1) greenb=$(tput setab 2) yellowb=$(tput setab 3) blueb=$(tput setab 4) purpleb=$(tput setab 5) cyanb=$(tput setab 6) \
grayb=$(tput setab 7) red=$(tput setaf 1) green=$(tput setaf 2) yellow=$(tput setaf 3) blue=$(tput setaf 4) purple=$(tput setaf 5) \
cyan=$(tput setaf 6) gray=$(tput setaf 7) white=$(tput setaf 7 bold) pink=$(tput setaf 5 bold) darkblue=$(tput setab 5 bold) blink=$(tput blink) \
left2=$(tput cub 2) up1=$(tput cuu1) pinkb=$(tput setab 5 bold) 
export c2=""$cyan"--$re"; export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
##########################
#### Welcome screen ######
##########################
echo; greet; qw|pr --omit-header --indent=8 --across|lolcat -p 88; ipa; echo
if [ "$(id -u)" -eq 0 ]; then us='#'; else us='$'; fi;
## bash prompt


qa() { 
tput setaf $((RANDOM%$1+$2)); 
}
ra1=$((RANDOM%16+1))
ra2=$((RANDOM%256+1))
rb1=$((RANDOM%16+1))
rb2=$((RANDOM%256+1))
rc1=$((RANDOM%16+1))
rc2=$((RANDOM%256+1))
rd1=$((RANDOM%16+1))
rd2=$((RANDOM%256+1))
re1=$((RANDOM%16+1))
re2=$((RANDOM%256+1))
#alias qa='tput setaf $((RANDOM%256+1))'
me=$(whoami)
computer=$(hostname 2>/dev/null)
# PS1='\$[\[\e[9$(rr2);$(rr1)m\]\t\[\e[0m\]][\[\e[9$(rr1)$(rr2)m\]$(ipnet)\[\e[0m\]][\[\e[$(rr2)$(rr1)m\]\u\[\e[0m\]][\[\e[9$(rr1)m\]$(pwd)\[\e[0m\]] \[\e[97;1m\]>\[\e[37;4m\]_\n\[\e[0m\]'
# PS1='[$(tput setaf $((RANDOM%4+44)))$us$re][$(tput setaf $((RANDOM%4+61)))$(date +%T)$re][$(tput setaf $((RANDOM%4+144)))$(hostname)$re][$(ipnet 2>/dev/null;)][$(tput setaf $((RANDOM%4+84)))$USER$re][$(tput setaf $((RANDOM%4+194)))$PWD/$re]>_\n'
PS1='[$(qa $ra1 $ra2)$()$us$re][$(qa $rb1 $rb2)$(date +%T)$re][$(qa $rc1 $rc2)$computer$re][$(tput setaf $(echo $iplocal|tail -c2))$iplocal][$(qa $rd1 $rd2)$USER$re][$(qa $re1 $re2)$PWD/$re]>_\n'
