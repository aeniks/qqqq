#!/bin/bash
########### [ants.sh] - bash installer
###########
########### COLORS
tput cup 0; tput ed; bold=$(tput bold) dim=$(tput dim) re=$(tput sgr0) cyan=$(tput setaf 6) pink=$(tput setaf 5 bold) blue=$(tput setaf 4 bold) blink=$(tput blink) up1=$(tput cuu1) dddd=$(echo -e ""$pink"--------------------------------$re") c2=""$cyan"--"$re""; ants="$_"; ll=$(echo -e " \t "); alias "ee"='echo '; 
########### greeting - HELLO
echo -e "\n\n\t\t $blink ¯\(ツ)/¯$re "; echo -e " \n\n $ll This script should be run as root... [ sudo -s ] \n\n"; read;
###########
sudo sed -i 's/#$nrconf{restart} = '"'"'i'"'"';/$nrconf{restart} = '"'"'a'"'"';/g' /etc/needrestart/needrestart.conf 2>/dev/null;
########### pro - task loaading animation

tput cup 0; tput ed; echo -e "\n\n\t\t$(tput blink) ¯\(ツ)/¯$(tput sgr0) ";
alias "ee"='echo ';
export bold=$(tput bold) dim=$(tput dim) so=$(tput smso) noso=$(tput rmso) rev=$(tput rev) re=$(tput sgr0) normal=$(tput sgr0) \
redb=$(tput setab 1) greenb=$(tput setab 2) yellowb=$(tput setab 3) blueb=$(tput setab 4) purpleb=$(tput setab 5) cyanb=$(tput setab 6) \
grayb=$(tput setab 7) red=$(tput setaf 1) green=$(tput setaf 2) yellow=$(tput setaf 3) blue=$(tput setaf 4) purple=$(tput setaf 5) \
cyan=$(tput setaf 6) gray=$(tput setaf 7) white=$(tput setaf 7 bold) pink=$(tput setaf 5 bold) darkblue=$(tput setab 5 bold) blink=$(tput blink) \
left2=$(tput cub 2) up1=$(tput cuu1) 
export dddd=$(echo -e ""$pink"--------------------------------$re") c2=""$cyan"--"$re""; ants="$_"; ll=$(echo -e " \t "); 
###########
if [ $UID != 0 ]; then echo -e " \n\n $ll This script must be run as root... try command: [ sudo -s ] \n\n " 1>&2; 
read -ep "$ll K" "k7"; echo ok; fi;
sudo sed -i 's/#$nrconf{restart} = '"'"'i'"'"';/$nrconf{restart} = '"'"'a'"'"';/g' /etc/needrestart/needrestart.conf 2>/dev/null;
# echo "%sudo ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/; 
############################################################
## pro - task loading animation ############################
############################################################

pro() {
alias tf='tput setaf $((RANDOM%16));'; alias tb='tput setab $((RANDOM%16));'; c2=""$cyan"--"$re""; tput civis; tput sgr0; 
$1 $2 $3 $4 &>./tmp & disown; tput cuu1; PROC_ID=$!; while kill -0 "$PROC_ID" &>/dev/null; 
do for X in "[        ]" "[$(tf)=$re       ]" "[$(tf)=$(tf)=$re      ]" "[$(tf)=$(tf)=$(tf)=$re     ]" "[$(tf)=$(tf)=$(tf)=$(tf)=    $re]"  \
"[ $(tf)=$(tf)=$(tf)=$(tf)=   $re]" "[  $(tf)=$(tf)=$(tf)=$(tf)=$re  ]" "[   $(tf)=$(tf)=$(tf)=$(tf)= $re]" "[    $(tf)=$(tf)=$(tf)=$(tf)=$re]" \
"[     "$(tf)"=$(tf)=$(tf)=$re]" "[      "$(tf)"=$(tf)="$re"]" "[       $(tf)=]" "[        ]" "[        ]" "[        ]"; 
do echo -e "    $dim[$(tb)  $re$dim]$re "$c2" Executing $rev $1 $2 $3 $4 $re $c2$c2$c2$c2$c2"; tput cuu1; tput sgr0; echo -e "\t\t\t\t\t $X"; tput cuu1; sleep 0.1; 
tput sc; tput cup $((LINES-4)) 0; echo -e "\t$darkblue $(tail -n2 ./tmp|head -n1) $re"; echo -e "\t$yellow $(tail -n1 ./tmp) $re"; tput cuu 2; tput rc; 
done; done; echo -e "\t\t\t\t\t"$dim" [$re  "$green"DONE"$re" $dim ]$re "; tput cnorm; rm ./tmp &>/dev/null;
}

##########33

yno() {
if [ -z "$1" ]; then echo -e "\n\t $c2 Try$dim ["$re"yno question? command 1"$dim"]$re and use quotes...\n"; fi; 
echo -e "\n\n\t $re$c2 $1 $white$dim["$re$bold"Y$dim/"$re$bold"n$dim]$re $(tput sc)\n\n\n\n"; tput rc cuu 5; read -n1 yn; 
if [ "$yn" == "${yn#[Nn]}" ]; then echo -en "\t $c2 OK"; pro $2; else echo "nope"; fi;  
}

####


clone_ants() {
sudo rm /ants 2>//dev/null; cd /; 
sudo git clone https://github.com/aeniks/ants||sudo apt install -yqq git 2>/dev/null && sudo git clone https://github.com/aeniks/ants;
sudo chown $SUDO_USER:ants /ants -R; cd /ants; ls;
}
super_user() {
echo -e "
$susu ALL=(ALL) NOPASSWD:ALL
%$susu ALL=(ALL) NOPASSWD:ALL
" > admins.sh;
sudo chown $SUDO_USER:$USER ./admins.sh; sudo chmod 775 ./admins.sh; sudo cp ./admins.sh /etc/sudoers.d/admins;
}



echo -ne "\n\n\n\n\n
\t$cyan --$green -------$red -- $blue---------$re - $pink--$re
\t    Welcome to Installer X    \n \t$pink --$cyan -------$green -- $re---------$red - $blue--$re  \n";
##################################
read -ep "admin: " -i "$SUDO_USER" "susu"; 
yno "beckome su?" "super_user"
yno "install ants?" "clone_ants"
###########
## show loaded state

tput cup 2; tput ed; 
#clear; unset *; 
echo -e "\n\n
\t ------------------------------------------
\t ------------ $green hello $re ---------------------
\t ------------------------------------------
\t --$dim Choose:  [$re Up / Down$dim ]$re
\t --$dim Select:  [$re Space$dim ]$re
\t --$dim Confirm: [$re Enter$dim ]$re
\t ------------------------------------------
\t -- Choose multiple options: --------------
\t ------------------------------------------"
function prompt_for_multiselect () {
# little helpers for terminal print control and key input
ESC=$( printf "\033")
cursor_blink_on()   { printf "$ESC[?25h"; }
cursor_blink_off()  { printf "$ESC[?25l"; }
cursor_to()         { printf "$ESC[$1;${2:-1}H"; }
print_inactive()    { printf "$2   $1 "; }
print_active()      { printf "$2  $ESC[7m $1 $ESC[27m"; }
get_cursor_row()    { IFS=';' read -sdR -p $'\E[6n' ROW COL; echo ${ROW#*[}; }
key_input()         {
local key
IFS= read -rsn1 key 2>/dev/null >&2
if [[ $key = ""      ]]; then echo enter; fi;
if [[ $key = $'\x20' ]]; then echo space; fi;
if [[ $key = $'\x1b' ]]; then
read -rsn2 key
if [[ $key = [A ]]; then echo up;    fi;
if [[ $key = [B ]]; then echo down;  fi;
fi
}
toggle_option()    {
local arr_name=$1
eval "local arr=(\"\${${arr_name}[@]}\")"
local option=$2
if [[ ${arr[option]} == true ]]; then
arr[option]=
else
arr[option]=true
fi
eval $arr_name='("${arr[@]}")'
}
local retval=$1
local options
local defaults
IFS=';' read -r -a options <<< "$2"
if [[ -z $3 ]]; then
defaults=()
else
IFS=';' read -r -a defaults <<< "$3"
fi
local selected=()
for ((i=0; i<${#options[@]}; i++)); do
selected+=("${defaults[i]:-false}")
printf "\n"
done
# determine current screen position for overwriting the options
local lastrow=`get_cursor_row`
local startrow=$(($lastrow - ${#options[@]}))
# ensure cursor and input echoing back on upon a ctrl+c during read -s
trap "cursor_blink_on; stty echo; printf '\n'; exit" 2
cursor_blink_off
local active=0
while true; do
# print options by overwriting the last lines
local idx=0
for option in "${options[@]}"; do
local prefix="    [ ]"
if [[ ${selected[idx]} == true ]]; then
prefix="    [$green*$re]"
fi
cursor_to $(($startrow + $idx))
if [ $idx -eq $active ]; then
print_active "$option" "$prefix"
else
print_inactive "$option" "$prefix"
fi
((idx++))
done
# user key control
case `key_input` in
space)  toggle_option selected $active;;
enter)  break;;
up)     ((active--));
if [ $active -lt 0 ]; then active=$((${#options[@]} - 1)); fi;;
down)   ((active++));
if [ $active -ge ${#options[@]} ]; then active=0; fi;;
esac
done
# cursor position back to normal
cursor_to $lastrow
printf "\n"
cursor_blink_on
eval $retval='("${selected[@]}")'
}
echo -e "\n\n\n\n"
# Usage Example
# cd $ghh/0000/etc 2>/dev/null;
ov1=($(ls $gh/ants/etc))
ov2=(${ov1[@]^})
OPTIONS_VALUES=(${ov2[@]//.*/ })
##
## OPTIONS_LABELS=("Apple" "Microsoft" "Google")
##
for i in "${!OPTIONS_VALUES[@]}"; do
OPTIONS_STRING+="${OPTIONS_VALUES[$i]} (${OPTIONS_LABELS[$i]});"
done
##
prompt_for_multiselect SELECTED "$OPTIONS_STRING"
##
for i in "${!SELECTED[@]}"; do
if [ "${SELECTED[$i]}" == "true" ]; then
CHECKED+=("${OPTIONS_VALUES[$i]}")
fi
done
########
echo -e "\n\n\t You chose: \n\t ${CHECKED[@]/#/"$c2 "} \n\n\n\n";
read -n1 -ep "
$up1$up1$ll$c2 Do you wish to proceed? "$dim"["$re$bold"Y"$dim"/"$re$bold"n"$re$dim"] $re" "yn";
if [ "$yn" != "${yn#[Nn]}" ]; then echo "$c2 nope";exit 1; else echo "$ll$c2 OK"; fi ; 
# tput cup 0;
for i in "${CHECKED[@],,}";
do echo -e "$i=true \n"
done
for i in "${CHECKED[@],,}";
do
echo -e "\n\t $c2 Installing $i \n"; sleep 1;
bash "./installers/"$i".sh"; echo -e "\n\t $c2 All done$c2 \n";
done
echo -e "\t $c2 All done$c2\n\n";
########################################
echo -e "\n\n\n\n    $ll $c2$blink Bash is now better! $re$c2 \n\n\n\n"; sleep 1;


################# end

echo -e "\n\n\n\n $green"; cd /ants/; echo -e "Enjoy the ants! \n\n"$re$dim"this be the files\n\n"$re"/ants/"|pr --indent=8 --omit-header;  echo -e "$blue\t------------ $re"; ls|pr --omit-header --indent=8; echo -ne "\n\n\n\n\n";
qqqq 


