#!/bin/bash
########### [ants.sh] - bash installer
###########
########### COLORS
tput cup 0; tput ed; bold=$(tput bold) dim=$(tput dim) re=$(tput sgr0) cyan=$(tput setaf 6) pink=$(tput setaf 5 bold) blue=$(tput setab 5 bold) blink=$(tput blink) up1=$(tput cuu1) dddd=$(echo -e ""$pink"--------------------------------$re") c2=""$cyan"--"$re""; ants="$_"; ll=$(echo -e " \t "); alias "ee"='echo '; 
########### greeting - HELLO
echo -e "\n\n\t\t $blink ¯\(ツ)/¯$re "; echo -e " \n\n $ll This script should be run as root... [ sudo -s ] \n\n"; read;
###########
sudo sed -i 's/#$nrconf{restart} = '"'"'i'"'"';/$nrconf{restart} = '"'"'a'"'"';/g' /etc/needrestart/needrestart.conf 2>/dev/null;
########### pro - task loaading animation
pro() {
alias tf='tput setaf $((RANDOM%16));'
alias tb='tput setab $((RANDOM%16));'
c2="$cyan --$re"; tput civis;
$1 $2 $3 $4 $pro &>/dev/null & disown; tput cuu 8; tput ed; tput cud 2; PROC_ID=$!; while kill -0 "$PROC_ID"&>/dev/null; 
do for X in "[        ]" "[$(tf)=$re       ]" "[$(tf)==$re      ]" "[$(tf)===$re     ]" "[$(tf)====    $re]"  "[ $(tf)====   $re]" \
"[  $(tf)====$re  ]" "[   $(tf)==== $re]" "[    $(tf)====$re]" "[     "$(tf)"===$re]" "[      "$(tf)"=="$re"]" "[       =]" "[        ]" "[        ]" "[        ]"; 
do echo -e "  [$(tb)  $re]$c2 Executing $rev $1 $2 $3 $4 $pro $re"$c2" $X"; tput cuu1; sleep 0.08; done; done;
echo -e "\t\t\t\t\t\t [  "$green"DONE"$re"  ] \n\n\n\n\n"; tput sgr0 cnorm;
}
yno() {
if [ -z "$1" ]; then echo -e "\n\t $c2 Try$dim ["$re"yno question? command 1"$dim"]$re and use quotes...\n"; fi; 
echo -e "\n\n\t $re$c2 $1 $white$dim["$re$bold"Y$dim/"$re$bold"n$dim]$re $(tput sc)\n\n\n\n"; tput rc cuu 5; read -n1 yn; 
if [ "$yn" == "${yn#[Nn]}" ]; then echo -en "\t $c2 OK"; pro $2; else echo "nope"; fi; tput sgr0;
}
##
##
clone_ants() {
sudo rm /ants 2>//dev/null; cd /; 
sudo git clone https://github.com/aeniks/ants||sudo apt install -yqq git 2>/dev/null && sudo git clone https://github.com/aeniks/ants;
sudo chown $SUDO_USER:ants /ants -R; cd /ants; ls;
}
echo -ne "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n
\t -- Welcome to Installer X ";
yno "install ants?" "clone_ants"
echo -e "\n\n\n\n $pink; cd /ants/; pwd; ls; echo -ne "\n\n\n\n\n\n\n\n";
###########
## show loaded state
