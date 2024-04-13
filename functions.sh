#!/bin/bash
###########
## /ants/functions.sh - functions for bash shell
###########
###########
## coolors - display available colors
coolors() {
#!/bin/bash
for ((i=0; i<256; i++)) ;do
echo -n '  '
tput setab $i
tput setaf $(( ( (i>231&&i<244 ) || ( (i<17)&& (i%8<2)) ||
(i>16&&i<232)&& ((i-16)%6 <(i<100?3:2) ) && ((i-16)%36<15) )?7:16))
printf " C %03d " $i
tput op
(( ((i<16||i>231) && ((i+1)%8==0)) || ((i>16&&i<232)&& ((i-15)%6==0)) )) &&
printf " " ''
done
echo;echo;
}
###########
## sup - show basic info
sup() {
echo -e "\n\t $redb running: $re$gray";
sudo w -o;
echo -e "\n\t $yellowb running-processess: $re$gray";
sudo ps -la
echo -e "\n\t$blueb login-attempts: $re$gray";
sudo lastb -an8
echo -e "\n\t $cyanb login-users: $re$gray";
sudo last -an8
echo -e "\n$re";
}
###########
## timer - countdown
timer() {
#!/bin/bash
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[0;33m'
RESET='\033[0m'
hour=0
min=0
sec=22
pppp pppp pppp pppp 
read -ep "$c2 Hours: " -i "$hour" "hour";
read -ep  "$up1$c2 Minutes: " -i "$min" "min";
read -ep  "$up1$c2 Seconds: " -i "$sec" "sec";
echo -ne "$up1";
tput civis
echo -ne "${GREEN}"
while [ $hour -ge 0 ]; do
while [ $min -ge 0 ]; do
while [ $sec -ge 0 ]; do
if [ "$hour" -eq "0" ] && [ "$min" -eq "0" ]; then
echo -ne "${YELLOW}"
fi
if [ "$hour" -eq "0" ] && [ "$min" -eq "0" ] && [ "$sec" -le "10" ]; then
echo -ne "${RED}"
fi
echo -ne "                $(printf "%02d" $hour):$(printf "%02d" $min):$(printf "%02d" $sec)\033[0K\r"
let "sec=sec-1"
sleep 1
done
sec=59
let "min=min-1"
done
min=59
let "hour=hour-1"
done
echo -e "${RESET}"
tput cnorm
}
###########
## db_new - create new mysql database
db_new() {
#!/bin/bash
## new_db
##
d1="$(date +%h%d%y-%S)"; read -ep "$c2 DB User: " -i "$SUDO_USER" "dbu" ;r ead -ep "$c2 New DB: " -i "$d1" "d1"; echo -e "\n $green $d1 $re";
mysql -u aaaa -p -e"CREATE DATABASE IF NOT EXISTS $d1;flush privileges;SHOW DATABASES;";
echo -e "\n $cyan $d1 $re \n\n";
##
##
}
###########
###########
## wotd - word of the day
wotd() {
RANDOMWORD=($(cat /usr/share/dict/words))
echo ${RANDOMWORD[$((RANDOM%${#RANDOMWORD[@]}))]}
}
###########
## loginscreen - change default login screen
loginscreen() {
sudo systemctl enable multi-user.target 2>/dev/null;
pppp read -n1 -ep "$c2 Choose default login mode: [G]/[T]" lsls
if [ $lsls == g ]; then 
sudo systemctl set-default graphical.target
else sudo systemctl set-default multi-user.target
fi
}
###########
## pro - task loaading animation
pro() {
####
alias tf='tput setaf $((RANDOM%16));'
alias tb='tput setab $((RANDOM%16));'
c2="$cyan --$re"; tput civis;
$1 $2 $3 $4 $pro &>/dev/null & disown; tput cuu 8; tput ed; tput cud 2; PROC_ID=$!; while kill -0 "$PROC_ID"&>/dev/null; 
do for X in "[        ]" "[$(tf)=$re       ]" "[$(tf)==$re      ]" "[$(tf)===$re     ]" "[$(tf)====    $re]"  "[ $(tf)====   $re]" \
"[  $(tf)====$re  ]" "[   $(tf)==== $re]" "[    $(tf)====$re]" "[     "$(tf)"===$re]" "[      "$(tf)"=="$re"]" "[       =]" "[        ]" "[        ]" "[        ]"; 
do echo -e "  [$(tb)  $re]$c2 Executing $rev $1 $2$3$4$pro $re"$c2" $X"; tput cuu1; sleep 0.08; done; done;
echo -e "\t\t\t\t\t\t [  "$green"DONE"$re"  ] \n\n\n\n\n"; tput cnorm;
}
###########
## show loaded state
yno() {
if [ -z "$1" ]; then echo -e "\n\t $c2 Try$dim ["$re"yno question? command 1"$dim"]$re and use quotes...\n"; fi; 
echo -e "\n\n\t $re$c2 $1 $white$dim["$re$bold"Y$dim/"$re$bold"n$dim]$re $(tput sc)\n\n\n\n"; tput rc cuu 5; read -n1 yn; 
if [ "$yn" == "${yn#[Nn]}" ]; then echo -en "\t $c2 OK"; pro $2; else echo "nope"; fi;  
}
screensaver() { 
clear; for i in $(seq 222); do tput civis; 
tput cup $((RANDOM%$444)); 
fortune|qqqq|pr --omit-header --indent="$((RANDOM%222))"|lolcat -s 222 -p 666 -a; sleep 4; 
tput rc cnorm; 
done; 
}
own() {
if [ $UID = 0 ]; 
then echo -e "\t $SUDO_USER own /ants/"; sudo chown $SUDO_USER:ants /ants -R; sudo chmod 775 /ants -R;
else echo -e "\t $USER own /ants/"; sudo chown $USER:ants /ants -R; sudo chmod 775 /ants -R; 
fi;
}
owns() {
if [ $UID = 0 ]; 
then echo -e "\t $SUDO_USER own /home/$SUDO_USER"; sudo chown $SUDO_USER:ants /home/$SUDO_USER -R; sudo chmod 775 /home/$SUDO_USER  -R;
else echo -e "\t $USER own/home/$USER"; sudo chown $USER:ants /home/$USER -R; sudo chmod 775/home/$USER -R; 
fi;
}

qqqq() {
if [ ! -f /gh/qqqq/.git/index ]; then read -ep "dl_git_notes? " "yno"; 
sudo apt -y install git gh 2>/dev/null; 
sudo mkdir /gh -m 775; 
sudo chown 1000:ants /gh; 
cd /gh; git clone https://github.com/aeniks/qqqq; 
chown 1000:ants /gh/qqqq; fi;
qqqq="/gh/qqqq"
cd $qqqq;
qqqqnnnn="$(wotd|tr "[:upper:]" "[:lower:]"|tr -d "'")";
read -ep " >_ note: " -i "$1$2" "pushnote"; 
read -ep " >_ name: " -i "$qqqqnnnn" "nnnn";
echo -e "$pushnote" > $qqqq/$nnnn.txt
git add -A; git commit -a --message="$(wotd)"; git push origin master --force;
}