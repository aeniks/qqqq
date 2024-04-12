#/bin/bash
tput dim; sudo apt-get -qqy install lolcat fortunes fortune-mod cowsay 2>/dev/null; echo;echo;
#echo "${cows[$((RANDOM%${#cows[@]}))]}"
#fortunes=$(ls /usr/share/games/fortunes)
cows=($(ls /usr/share/cowsay/cows|sed s/.cow//g)); 
alias qqqq='/usr/games/fortune|/usr/games/cowthink -f ${cows[$((RANDOM%${#cows[@]}))]}|lolcat;'
qqqq;
echo qqqq