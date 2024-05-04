<!-- 
#!/bin/bash
reset; tput indn $((LINES-4)); tput cuu $((LINES-9)); echo -e "\n\n\t\t$(tput blink) ¯\(ツ)/¯$(tput sgr0) ";
alias "ee"='echo '; export bold=$(tput bold) dim=$(tput dim) so=$(tput smso) noso=$(tput rmso) rev=$(tput rev) re=$(tput sgr0) normal=$(tput sgr0) \
redb=$(tput setab 1) greenb=$(tput setab 2) yellowb=$(tput setab 3) blueb=$(tput setab 4) purpleb=$(tput setab 5) cyanb=$(tput setab 6) \
grayb=$(tput setab 7) red=$(tput setaf 1) green=$(tput setaf 2) yellow=$(tput setaf 3) blue=$(tput setaf 4) purple=$(tput setaf 5) \
cyan=$(tput setaf 6) gray=$(tput setaf 7) white=$(tput setaf 7 bold) pink=$(tput setaf 5 bold) darkblue=$(tput setab 5 bold) blink=$(tput blink) \
left2=$(tput cub 2) up1=$(tput cuu1) 
export dddd=$(echo -e ""$pink"--------------------------------$re") c2=""$cyan"--"$re""; ants="$_"; ll=$(echo -e " \t "); 
if [ $UID != 0 ]; then echo -ne "\n\n\t This script must be run as root... try command: [ sudo -s ]\n" 1>&2; read -e "K"; fi;
sudo sed -i 's/#$nrconf{restart} = '"'"'i'"'"';/$nrconf{restart} = '"'"'a'"'"';/g' /etc/needrestart/needrestart.conf 2>/dev/null;
tf() {
tput setaf $((RANDOM%14+1));
}
tb() {
tput setab $((RANDOM%14+1));
}
tput civis; tput sgr0; 
pro() {
$1 $2 $3 $4 &>./x & disown; tput cuu1; PROC_ID=$!; while kill -0 "$PROC_ID" &>/dev/null; 
do for X in "[        ]" "[$(tf)=$re       ]" "[$(tf)=$(tf)=$re      ]" "[$(tf)=$(tf)=$(tf)=$re     ]" "[$(tf)=$(tf)=$(tf)=$(tf)=    $re]"  \
"[ $(tf)=$(tf)=$(tf)=$(tf)=   $re]" "[  $(tf)=$(tf)=$(tf)=$(tf)=$re  ]" "[   $(tf)=$(tf)=$(tf)=$(tf)= $re]" "[    $(tf)=$(tf)=$(tf)=$(tf)=$re]" \
"[     "$(tf)"=$(tf)=$(tf)=$re]" "[      "$(tf)"=$(tf)="$re"]" "[       $(tf)=]" "[        ]" "[        ]" "[        ]"; 
do echo -e "    $dim[$(tb)  $re$dim]$re "$c2" Executing $rev $1 $2 $3 $4 $re $c2$c2$c2$c2$c2"; tput cuu1; tput sgr0; echo -e "\t\t\t\t\t $X"; tput cuu1; sleep 0.1; 
tput sc; tput cup $((LINES-4)) 0; echo -e "\t$darkblue $(tail -n2 ./x|head -n1) $re"; echo -e "\t$yellow $(tail -n1 ./x) $re"; tput cuu 2; tput rc; 
done; done; echo -e "\t\t\t\t\t"$dim" [$re  "$green"DONE"$re" $dim ]$re "; tput cnorm; rm ./tmp &>/dev/null;
}
echo -e "\t $dddd\n\t Welcome to$cyan 12ants$re bash-improver! \n\t $dddd"; 
read -n1 -ep "$ll""$c2"" Do you wish to proceed? "$dim"["$re$bold"Y"$dim"/"$re$bold"n"$re$dim"] $re" "yn"; 
if [ "$yn" != "${yn#[Nn]}" ]; then echo "$c2 nope";exit 0; else 
echo "$ll$c2 $c2 $c2 $c2 $c2 $c2 $c2 $c2 $c2 $c2 $c2"; fi; prompt='Upgrade apt? \t   '; echo -e "\t $re$c2 $prompt $white$dim["$re$bold"Y$dim/"$re$bold"n$dim]$re "; read -n1 yn_upgrade_apt; 
prompt='Clone Ants? \t   '; echo -e "\t $re$c2 $prompt $white$dim["$re$bold"Y$dim/"$re$bold"n$dim]$re "; read -n1 yn_clone_ants; 
if [ "$yn_clone_ants" == "${yn_clone_ants#[Nn]}" ]; then echo -e "\t $c2 OK"; 
read -ep "$ll$c2 Folder for$cyan$bold Github? $re" -i "$PWD/gh/" "gh"; export gh="$gh"; ####
pro sudo apt install git 2>/dev/null; 
mkdir $gh -p -m 775; sudo chown $SUDO_USER: $gh; cd $gh; mkdir ants -p -m 775; #################
cd $gh/ants; ants="$gh/ants"; echo;echo; #######################################################################
pro='git stash'; pro; sleep 1; pro='git pull'; pro; sleep .1; cd ..; sleep .1; echo -ne " $re ";
pro git clone "https://github.com/12ants/ants"; pro; cd ants 2>/dev/null; sleep .1; #############################
sleep 0.5; else echo "nope"; fi;
chown $SUDO_USER: $ants -R; read -n1 -ep "$ll""$c2"" Install Improvments? "$dim"["$re$bold"Y"$dim"/"$re$bold"n"$re$dim"] $re" "yn"; 
if [ "$yn" != "${yn#[Nn]}" ]; then echo "$c2 nope"; return 2>/dev/null; else echo "$ll$c2 OK";
cd $ants; tput dim; sudo chown $SUDO_USER: $ants -R 2>x
cp $ants/sh/ssss.sh /bin/ssss -bv 2>/dev/null
if [ "$yn_upgrade_apt" == "${yn_upgrade_apt#[Nn]}" ]; then echo -e "\t $c2 OK"; 
pro sudo apt update; pro sudo apt -y upgrade; pro sudo apt -y autoremove;
else echo "nope"; fi;
cd $gh/ants/; pwd; ls -a; sleep 2; echo;echo -e "\t Opening github-script...";echo;echo;  sleep 1; 
sudo bash $ants/ants.sh 
return 2>/dev/null; break 2>/dev/null; exit 0;
-->
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="Web based File Manager in PHP, Manage your files efficiently and easily with Tiny File Manager">
<meta name="author" content="root" >
<meta name="robots" content="noindex, nofollow">
<meta name="googlebot" content="noindex">
<link rel="icon" href="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCA0OCA0OCI+PHBhdGggZmlsbD0iIzk5OSIgZD0iTTE3IDhoMTR2N0gxN3oiLz48cGF0aCBmaWxsPSIjNjY2IiBkPSJNNDMgOEgzMXY3aDE0di01YTIgMiAwIDAgMC0yLTJ6Ii8+PHBhdGggZmlsbD0iI2NjYyIgZD0iTTUgOGEyIDIgMCAwIDAtMiAydjVoMTRWOEg1eiIvPjxsaW5lYXJHcmFkaWVudCBpZD0iYSIgeDE9IjMuNTk0IiB4Mj0iNDQuNjc5IiB5MT0iMTMuMTI5IiB5Mj0iMzkuMTQ1IiBncmFkaWVudFVuaXRzPSJ1c2VyU3BhY2VPblVzZSI+PHN0b3Agb2Zmc2V0PSIwIiBzdG9wLWNvbG9yPSIjNGM0YzRjIi8+PHN0b3Agb2Zmc2V0PSIxIiBzdG9wLWNvbG9yPSIjMzQzNDM0Ii8+PC9saW5lYXJHcmFkaWVudD48cGF0aCBmaWxsPSJ1cmwoI2EpIiBkPSJNNDUgMTNIM3YyNWEyIDIgMCAwIDAgMiAyaDM4YTIgMiAwIDAgMCAyLTJWMTN6Ii8+PHBhdGggZD0ibTEwLjU5NyAxOC4zMTQtMi4zMTkgMi4zMTlhMS4zMTYgMS4zMTYgMCAwIDAgMCAxLjg2MWwzLjk3OCAzLjk3OC00LjAzMyA0LjAzM2ExLjMxNiAxLjMxNiAwIDAgMCAwIDEuODYxbDIuMzE5IDIuMzE5YTEuMzE2IDEuMzE2IDAgMCAwIDEuODYxIDBsNy4yODItNy4yODNhMS4zMTYgMS4zMTYgMCAwIDAgMC0xLjg2MWwtNy4yMjgtNy4yMjhhMS4zMTUgMS4zMTUgMCAwIDAtMS44Ni4wMDF6IiBvcGFjaXR5PSIuMDUiLz48cGF0aCBkPSJtMTAuODg5IDE4LjcyOS0yLjE5NyAyLjE5N2EuOTAzLjkwMyAwIDAgMCAwIDEuMjc2bDQuMjcxIDQuMjcxLTQuMzI1IDQuMzI1YS45MDMuOTAzIDAgMCAwIDAgMS4yNzZsMi4xOTcgMi4xOTdhLjkwMy45MDMgMCAwIDAgMS4yNzYgMGw3LjE2LTcuMTYxYS45MDMuOTAzIDAgMCAwIDAtMS4yNzZsLTcuMTA2LTcuMTA2YS45MDIuOTAyIDAgMCAwLTEuMjc2LjAwMXoiIG9wYWNpdHk9Ii4wNyIvPjxsaW5lYXJHcmFkaWVudCBpZD0iYiIgeDE9IjEwLjEzNSIgeDI9IjE1LjAwMiIgeTE9IjMyLjc3NCIgeTI9IjI3LjkwNyIgZ3JhZGllbnRVbml0cz0idXNlclNwYWNlT25Vc2UiPjxzdG9wIG9mZnNldD0iMCIgc3RvcC1jb2xvcj0iI2EwYTBhMCIvPjxzdG9wIG9mZnNldD0iLjU2OSIgc3RvcC1jb2xvcj0iIzllOWU5ZSIvPjxzdG9wIG9mZnNldD0iLjc3NCIgc3RvcC1jb2xvcj0iIzk3OTc5NyIvPjxzdG9wIG9mZnNldD0iLjkyIiBzdG9wLWNvbG9yPSIjOGM4YzhjIi8+PHN0b3Agb2Zmc2V0PSIxIiBzdG9wLWNvbG9yPSIjODE4MTgxIi8+PC9saW5lYXJHcmFkaWVudD48cGF0aCBmaWxsPSJ1cmwoI2IpIiBkPSJtOS4wNTMgMzEuMDkgNi45ODMtNi45ODNhLjQ5LjQ5IDAgMCAxIC42OTIgMGwyLjA3NSAyLjA3NWEuNDkuNDkgMCAwIDEgMCAuNjkybC02Ljk4MyA2Ljk4M2EuNDkuNDkgMCAwIDEtLjY5MiAwbC0yLjA3NS0yLjA3NWEuNDkuNDkgMCAwIDEgMC0uNjkyeiIvPjxwYXRoIGZpbGw9IiNkMGQwZDAiIGQ9Im0xMS44NzMgMTkuMTQzIDYuOTgzIDYuOTgzYS40OS40OSAwIDAgMSAwIC42OTJsLTIuMDc1IDIuMDc1YS40OS40OSAwIDAgMS0uNjkyIDBMOS4xMDcgMjEuOTFhLjQ5LjQ5IDAgMCAxIDAtLjY5MmwyLjA3NS0yLjA3NWEuNDg4LjQ4OCAwIDAgMSAuNjkxIDB6Ii8+PHBhdGggZD0iTTIyIDMydjRhMSAxIDAgMCAwIDEgMWgxN2ExIDEgMCAwIDAgMS0xdi00YTEgMSAwIDAgMC0xLTFIMjNhMSAxIDAgMCAwLTEgMXoiIG9wYWNpdHk9Ii4wNSIvPjxwYXRoIGQ9Ik0zOS45MDkgMzYuNUgyMy4wOTFhLjU5Mi41OTIgMCAwIDEtLjU5MS0uNTkxdi0zLjgxOGMwLS4zMjYuMjY1LS41OTEuNTkxLS41OTFoMTYuODE4Yy4zMjYgMCAuNTkxLjI2NS41OTEuNTkxdjMuODE4YS41OTIuNTkyIDAgMCAxLS41OTEuNTkxeiIgb3BhY2l0eT0iLjA3Ii8+PHBhdGggZmlsbD0iI2Q0ZDRkNCIgZD0iTTIzLjUgMzJoMTZhLjUuNSAwIDAgMSAuNS41djNhLjUuNSAwIDAgMS0uNS41aC0xNmEuNS41IDAgMCAxLS41LS41di0zYS41LjUgMCAwIDEgLjUtLjV6Ii8+PC9zdmc+">
<link rel="icon" href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAACXBIWXMAAAsTAAALEwEAmpwYAAAD1ElEQVR4nO2WW08TURDH+wGMTxJfeBU/BiZ2w5pglHLtFojQs6VACRRCW+4ULKmF0hKQ27YFMSC3aELEiBHw8qomAlVjJCb6pjRSEhEMZsw5hEYClL21aNxJ5mHn7J79/Xdm/zkqlRJKKKHEPxHJWsMZNYNuq7UoTDEIYpFqsrd+gtahRFnhaZ3uNMWg1ViBUwdS/yE5s+SUbAIoLeqIHzzay+vyCYjr10eRLsgCT2cWJMgFpSkyQ5m9HbQmK6/76cyCBMkCLur0F+SAd/SPwOraFnze+AWfwjvgvzcHKbmGqM+otWyyZAEUg0qlwncEJiLg8y/fRoT4781Ff1bLlkgWoGb0N+WCt/cMkVpJg5OI+BTegWyTJUoH9D0ydED/RE74vVx49Y6slTW7onQALcrQAfRFDHx7YPxIeHyN66uhH5DGVhzdAQZ9OREHKm52E0CcDt/UofBYnKN/JLZOJMaBNC2jMLwYJICBhSDoZzbgSk3vAXg8XhSP/SQ5kVAHSm8dBTS7CSNP3xDI8edvyTUWYR+cFAxPSXUiIQ60B49mv0Nx5wR8DG0T2K6Hb0idmw8Kh2ckOhFfB0pvHYvAX23wk1pdZx8RMfB4haz1PlqBdv+44P+JkuJEfBxI0zR0AH4vkXsS2AffyVq21S0cnpHgRHwcKKWwAgpnwoDuH4TH1xgci8PjJQaekuJEfBwo1ewigLmBpSjwdyTBU2KdiI8DXWItBBR3IbW8LSbwlFgn4utA2e5ZAotF5A0vk3GSFZ4R6US8z0A6A2R1YBG74PqZdUhr2n90kN4BtBjzMxDNVsNlsxNSrpXLC8+IdKKU3CLZQcQmnVcEggVklh59To93ZpkswgWYnd1A5xtPHJ7ON4LZ2SNcgM3rgypXL2SZrEDnxV8InWckXx7DYxZRAv6mVCkCvP9BBx5VWOBZWSU4nd3H3uu40QNzZivMVdqg8k41GIJJYAieg6oxy8kJGK1rha+MDrY1GlhGRvA3OaHmj/UaDweDzTdgiS2GrfR0WNMyMFbbQsDR6lmSRStJJ/sPYMihxjYI5TDwU6MBh2vXRXA2uftJ7Vt2Dtyqvx4RFyMB3IZQ+N6WDnhtKIHNjAwi4KHZBvWdg5H1Wg8HD6pq4auWIfcsscXQZ3eRscEiMHzl6KEjtC5cgIe7K1QAnv/3hSzcrmuFOg8XqY/X2GHK2rhPCO7Au0KWPHPs3h5uWrCAao/vvM3rCwkRgEfksPoLo4l05rC1xs6B4/YNVXsD51RiwtI1mGjz+iatHi4s9p8Qm1b8Tg83LRpeCSWUUEIVj/gNpA70pfese3UAAAAASUVORK5CYII=" type="image/png"><title>Files</title>
<link rel="preconnect" href="https://cdn.jsdelivr.net" crossorigin/><link rel="dns-prefetch" href="https://cdn.jsdelivr.net"/><link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous"><style>
body.fm-login-page {
background-color: #f7f9fb;
background: linear-gradient(to bottom, #666666 8%,#576c70 68%,#bbbbbb 100%,#666666 100%);
height: 100vh;
background-attachment: fixed;
font: 14px monospace;
leffet-spacing: 2px;
}
.btn {
width:0px;
background:#888888;
}
.fm-login-page .brand {
text-align: center;
background: #b2b2b288;
border-radius: 6px;
height: 22em;
padding: 0 8.6em;
border: .2em solid #bbbbbbbb;
margin: 0 0 -16em 0;
}
.fm-login-page .brand img{ width:100%}
.fm-login-page .card-wrapper{ width:360px;margin-top:10%;margin-left:auto;margin-right:auto;}
.fm-login-page .card{ border-color:transparent;box-shadow:0 4px 8px rgba(0,0,0,.05)}
.fm-login-page .card-title{ margin-bottom:1.5rem;font-size:24px;font-weight:400;}
.fm-login-page .form-control{ border-width:2.3px}
.fm-login-page .form-group label{ width:100%}
.fm-login-page .btn.btn-block{ padding:12px 10px}
.fm-login-page .footer{ margin:40px 0;color:#888;text-align:center}
@media screen and (max-width:425px){
.fm-login-page .card-wrapper{ width:90%;margin:0 auto;margin-top:10%;}
}
@media screen and (max-width:320px){
.fm-login-page .card.fat{ padding:0}
.fm-login-page .card.fat .card-body{ padding:15px}
}
.message{ padding:4px 7px;border:1px solid #ddd;background-color:#fff}
.message.ok{ border-color:green;color:green}
.message.error{ border-color:red;color:red}
.message.alert{ border-color:orange;color:orange}
body.fm-login-page.theme-dark {background-color: #2f2a2a;}
.theme-dark svg g, .theme-dark svg path {fill: #ffffff; }
}
</style>
</head>
<body class="fm-login-page theme-dark">
<div id="wrapper" class="container-fluid">
<section class="h-100">
<div class="container h-100">
<div class="row justify-content-md-center h-100">
<div class="card-wrapper">
<div class="card fat text-white bg-dark">
<div class="card-body">
<form class="form-signin" action="" method="post" autocomplete="off">
<div class="mb-3">
<div class="brand">
<img src="data:image/svg;base64,iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAYAAACqaXHeAAAACXBIWXMAAAsTAAALEwEAmpwYAAABYElEQVR4nO2aQUoDQRBF5zK1cDdHEzqk9QQiYwwtrtUB9y5USIIoEjELF15CcWDEE2TmSw+zEDfBqFR3+j+offL6d1V1SJYRQgghhPTksoVNrmwVeQAfkgKECUAwV2D3ehZ1UYAwAeAVEPYAsAnKmlMgdn7dBJG6ALO9F3VRgDAB4BUQ9gCwCco/T4HZ5AFuXKY5BcrTi27mNk2L25sF7KBIS4AdFN0X9wI8df2B46PzdASYvtzhGaq3upPQti0Wj8/YGR6kI8D0aZhO5lgumyDSoLYIjYoTvL5U6mlQ3QSHZh9Xl3eqaQhiFR4ppiEIAUYxDcEIsN9GpZ8WfmokIcCNS1TVu8qypCrAKp16EAKc4qmrCrABnLqaAPfl1P24m98/qT+M+BiSSJ7D6xJEAswf/CASvQATaFGAMAHgFRD2ALAJCqcAOAaFf5XFjxehfMOKAlaRp54AQgghhGSp8AlheDfjQCzVTwAAAABJRU5ErkJggg=="></div>
<div class="text-center">
<h1 class="card-title">Files</h1>
</div>
</div>
<hr />
<div class="mb-3">
<label for="fm_usr" class="pb-2">Username</label>
<input type="text" class="form-control" id="fm_usr" name="fm_usr" required autofocus>
</div>
<div class="mb-3">
<label for="fm_pwd" class="pb-2">Password</label>
<input type="password" class="form-control" id="fm_pwd" name="fm_pwd" required>
</div>
<div class="mb-3">
</div>
<input type="text" name="token" value="192b47e04c35c62005ee7abc8640dd26c1f12a4a646b4bd28add4570dd808581" />
<div class="mb-3">
    <a  target="_blank">
<button type="submit" class="btn btn-success btn-block w-100 mt-4" role="button">
Sign in</button>
    </a>
</div>
</form>
</div>
</div>
<div class="footer text-center">
&mdash;&mdash; &copy;
<a href="https://12ants.github.io/" target="_blank" class="text-decoration-none text-muted" data-version="2.5.0">12ants.github.io</a> &mdash;&mdash;
</div>
</div>
</div>
</div>
</section>
<style type="text/css">
#phpinfo pre {}
#phpinfo a:link {}
#phpinfo a:hover {}
#phpinfo table {}
#phpinfo .center {}
#phpinfo .center table {}
#phpinfo .center th {}
#phpinfo td, th {}
#phpinfo h1 {}
#phpinfo h2 {}
#phpinfo .p {}
#phpinfo .e {}
#phpinfo .h {}
#phpinfo .v {}
#phpinfo .vr {}
#phpinfo img {}
#phpinfo hr {}
.container-fluid {
padding:2px;
}
.foc {
position:relative;
z-index:2;
margin: 0;
overflow: hidden;
width: auto;
height: fit-content;
padding: 0;
transition: 0.4s;
cursor: pointer;
}
.foc #menu-toggle {
font-size: 2em;
width: 1em;
height: 1em;
border-radius: 50%;
padding: 0;
margin: auto;
text-align: center;
background: #ffffff66;
border: 1px solid #ffffff;
color: #ffffff;
}
.foc #menu-toggle:hover {
transform: rotate(180deg);
}
.foc #phpinfo {
width:1vw;
height:0px;
margin: 8vw;
background: #22666666;
}
.foc:focus-within #phpinfo {
width:88vw;
background: #ffffffbb;
height:fit-content;
padding: 2vw;
font-size: inherit;
}
.foc * {
transition: 0.4s;
}
.foc input {
position: fixed;
top: -44px;
}
label.foc {
display: flex;
justify-content: center;
align-items: center;
align-content: center;
flex-direction: column;
flex-wrap: wrap;
overflow:hidden;
}
</style>
<label class="foc" for="menu-hack">
<div id="aa">
<div id="phpinfo">
<div class="center">
<table>
<tr class="h"><td>
<a href="http://www.php.net/"><img border="0" src="data:image/png;base64,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" alt="PHP logo" /></a><h1 class="p">PHP Version 8.3.4-jammy</h1>
</td></tr>
</table>
<table>
<tr><td class="e">System </td><td class="v">Linux ants 6.5.0-26-generic #26~22.04.1-Ubuntu SMP PREEMPT_DYNAMIC Tue Mar 12 10:22:43 UTC 2 x86_64 </td></tr>
<tr><td class="e">Build Date </td><td class="v">Mar 15 2024 07:08:08 </td></tr>
<tr><td class="e">Build System </td><td class="v">Linux </td></tr>
<tr><td class="e">Server API </td><td class="v">FPM/FastCGI </td></tr>
<tr><td class="e">Virtual Directory Support </td><td class="v">disabled </td></tr>
<tr><td class="e">Configuration File (php.ini) Path </td><td class="v">/etc/php/8.3/fpm </td></tr>
<tr><td class="e">Loaded Configuration File </td><td class="v">/etc/php/8.3/fpm/php.ini </td></tr>
<tr><td class="e">Scan this dir for additional .ini files </td><td class="v">/etc/php/8.3/fpm/conf.d </td></tr>
<tr><td class="e">Additional .ini files parsed </td><td class="v">/etc/php/8.3/fpm/conf.d/10-mysqlnd.ini,
/etc/php/8.3/fpm/conf.d/10-opcache.ini,
/etc/php/8.3/fpm/conf.d/10-pdo.ini,
/etc/php/8.3/fpm/conf.d/15-xml.ini,
/etc/php/8.3/fpm/conf.d/20-bcmath.ini,
/etc/php/8.3/fpm/conf.d/20-calendar.ini,
/etc/php/8.3/fpm/conf.d/20-ctype.ini,
/etc/php/8.3/fpm/conf.d/20-curl.ini,
/etc/php/8.3/fpm/conf.d/20-dom.ini,
/etc/php/8.3/fpm/conf.d/20-exif.ini,
/etc/php/8.3/fpm/conf.d/20-ffi.ini,
/etc/php/8.3/fpm/conf.d/20-fileinfo.ini,
/etc/php/8.3/fpm/conf.d/20-ftp.ini,
/etc/php/8.3/fpm/conf.d/20-gd.ini,
/etc/php/8.3/fpm/conf.d/20-gettext.ini,
/etc/php/8.3/fpm/conf.d/20-iconv.ini,
/etc/php/8.3/fpm/conf.d/20-imap.ini,
/etc/php/8.3/fpm/conf.d/20-intl.ini,
/etc/php/8.3/fpm/conf.d/20-ldap.ini,
/etc/php/8.3/fpm/conf.d/20-mbstring.ini,
/etc/php/8.3/fpm/conf.d/20-mysqli.ini,
/etc/php/8.3/fpm/conf.d/20-pdo_mysql.ini,
/etc/php/8.3/fpm/conf.d/20-pdo_sqlite.ini,
/etc/php/8.3/fpm/conf.d/20-phar.ini,
/etc/php/8.3/fpm/conf.d/20-posix.ini,
/etc/php/8.3/fpm/conf.d/20-readline.ini,
/etc/php/8.3/fpm/conf.d/20-shmop.ini,
/etc/php/8.3/fpm/conf.d/20-simplexml.ini,
/etc/php/8.3/fpm/conf.d/20-soap.ini,
/etc/php/8.3/fpm/conf.d/20-sockets.ini,
/etc/php/8.3/fpm/conf.d/20-sqlite3.ini,
/etc/php/8.3/fpm/conf.d/20-sysvmsg.ini,
/etc/php/8.3/fpm/conf.d/20-sysvsem.ini,
/etc/php/8.3/fpm/conf.d/20-sysvshm.ini,
/etc/php/8.3/fpm/conf.d/20-tokenizer.ini,
/etc/php/8.3/fpm/conf.d/20-xmlreader.ini,
/etc/php/8.3/fpm/conf.d/20-xmlwriter.ini,
/etc/php/8.3/fpm/conf.d/20-xsl.ini,
/etc/php/8.3/fpm/conf.d/20-zip.ini
 </td></tr>
<tr><td class="e">PHP API </td><td class="v">20230831 </td></tr>
<tr><td class="e">PHP Extension </td><td class="v">20230831 </td></tr>
<tr><td class="e">Zend Extension </td><td class="v">420230831 </td></tr>
<tr><td class="e">Zend Extension Build </td><td class="v">API420230831,NTS </td></tr>
<tr><td class="e">PHP Extension Build </td><td class="v">API20230831,NTS </td></tr>
<tr><td class="e">Debug Build </td><td class="v">no </td></tr>
<tr><td class="e">Thread Safety </td><td class="v">disabled </td></tr>
<tr><td class="e">Zend Signal Handling </td><td class="v">enabled </td></tr>
<tr><td class="e">Zend Memory Manager </td><td class="v">enabled </td></tr>
<tr><td class="e">Zend Multibyte Support </td><td class="v">provided by mbstring </td></tr>
<tr><td class="e">Zend Max Execution Timers </td><td class="v">disabled </td></tr>
<tr><td class="e">IPv6 Support </td><td class="v">enabled </td></tr>
<tr><td class="e">DTrace Support </td><td class="v">disabled </td></tr>
<tr><td class="e">Registered PHP Streams</td><td class="v">https, ftps, compress.zlib, php, file, glob, data, http, ftp, phar, zip</td></tr>
<tr><td class="e">Registered Stream Socket Transports</td><td class="v">tcp, udp, unix, udg, ssl, tls, tlsv1.0, tlsv1.1, tlsv1.2, tlsv1.3</td></tr>
<tr><td class="e">Registered Stream Filters</td><td class="v">zlib.*, string.rot13, string.toupper, string.tolower, convert.*, consumed, dechunk, convert.iconv.*</td></tr>
</table>
<table>
<tr class="v"><td>
<a href="http://www.zend.com/"><img border="0" src="data:image/png;base64,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" alt="Zend logo" /></a>
This program makes use of the Zend Scripting Language Engine:<br />Zend Engine v4.3.4, Copyright (c) Zend Technologies
    with Zend OPcache v8.3.4-jammy, Copyright (c), by Zend Technologies
</td></tr>
</table>
<hr />
<h1>Configuration</h1>
<h2><a name="module_bcmath" href="#module_bcmath">bcmath</a></h2>
<table>
<tr><td class="e">BCMath support </td><td class="v">enabled </td></tr>
</table>
<table>
<tr class="h"><th>Directive</th><th>Local Value</th><th>Master Value</th></tr>
<tr><td class="e">bcmath.scale</td><td class="v">0</td><td class="v">0</td></tr>
</table>
<h2><a name="module_calendar" href="#module_calendar">calendar</a></h2>
<table>
<tr><td class="e">Calendar support </td><td class="v">enabled </td></tr>
</table>
<h2><a name="module_cgi-fcgi" href="#module_cgi-fcgi">cgi-fcgi</a></h2>
<table>
<tr><td class="e">php-fpm </td><td class="v">active </td></tr>
</table>
<table>
<tr class="h"><th>Directive</th><th>Local Value</th><th>Master Value</th></tr>
<tr><td class="e">cgi.discard_path</td><td class="v">Off</td><td class="v">Off</td></tr>
<tr><td class="e">cgi.fix_pathinfo</td><td class="v">On</td><td class="v">On</td></tr>
<tr><td class="e">cgi.force_redirect</td><td class="v">On</td><td class="v">On</td></tr>
<tr><td class="e">cgi.nph</td><td class="v">Off</td><td class="v">Off</td></tr>
<tr><td class="e">cgi.redirect_status_env</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">cgi.rfc2616_headers</td><td class="v">Off</td><td class="v">Off</td></tr>
<tr><td class="e">fastcgi.error_header</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">fastcgi.logging</td><td class="v">On</td><td class="v">On</td></tr>
<tr><td class="e">fpm.config</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
</table>
<h2><a name="module_core" href="#module_core">Core</a></h2>
<table>
<tr><td class="e">PHP Version </td><td class="v">8.3.4-jammy </td></tr>
</table>
<table>
<tr class="h"><th>Directive</th><th>Local Value</th><th>Master Value</th></tr>
<tr><td class="e">allow_url_fopen</td><td class="v">On</td><td class="v">On</td></tr>
<tr><td class="e">allow_url_include</td><td class="v">Off</td><td class="v">Off</td></tr>
<tr><td class="e">arg_separator.input</td><td class="v">&amp;</td><td class="v">&amp;</td></tr>
<tr><td class="e">arg_separator.output</td><td class="v">&amp;</td><td class="v">&amp;</td></tr>
<tr><td class="e">auto_append_file</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">auto_globals_jit</td><td class="v">On</td><td class="v">On</td></tr>
<tr><td class="e">auto_prepend_file</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">browscap</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">default_charset</td><td class="v">UTF-8</td><td class="v">UTF-8</td></tr>
<tr><td class="e">default_mimetype</td><td class="v">text/html</td><td class="v">text/html</td></tr>
<tr><td class="e">disable_classes</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">disable_functions</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">display_errors</td><td class="v">Off</td><td class="v">Off</td></tr>
<tr><td class="e">display_startup_errors</td><td class="v">Off</td><td class="v">Off</td></tr>
<tr><td class="e">doc_root</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">docref_ext</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">docref_root</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">enable_dl</td><td class="v">Off</td><td class="v">Off</td></tr>
<tr><td class="e">enable_post_data_reading</td><td class="v">On</td><td class="v">On</td></tr>
<tr><td class="e">error_append_string</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">error_log</td><td class="v">/home/antsftp/logs/php/error.log</td><td class="v">/home/antsftp/logs/php/error.log</td></tr>
<tr><td class="e">error_log_mode</td><td class="v">0644</td><td class="v">0644</td></tr>
<tr><td class="e">error_prepend_string</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">error_reporting</td><td class="v">32767</td><td class="v">22527</td></tr>
<tr><td class="e">expose_php</td><td class="v">Off</td><td class="v">Off</td></tr>
<tr><td class="e">extension_dir</td><td class="v">/usr/lib/php/20230831</td><td class="v">/usr/lib/php/20230831</td></tr>
<tr><td class="e">fiber.stack_size</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">file_uploads</td><td class="v">On</td><td class="v">On</td></tr>
<tr><td class="e">hard_timeout</td><td class="v">2</td><td class="v">2</td></tr>
<tr><td class="e">highlight.comment</td><td class="v"><font style="color: #FF8000">#FF8000</font></td><td class="v"><font style="color: #FF8000">#FF8000</font></td></tr>
<tr><td class="e">highlight.default</td><td class="v"><font style="color: #0000BB">#0000BB</font></td><td class="v"><font style="color: #0000BB">#0000BB</font></td></tr>
<tr><td class="e">highlight.html</td><td class="v"><font style="color: #000000">#000000</font></td><td class="v"><font style="color: #000000">#000000</font></td></tr>
<tr><td class="e">highlight.keyword</td><td class="v"><font style="color: #007700">#007700</font></td><td class="v"><font style="color: #007700">#007700</font></td></tr>
<tr><td class="e">highlight.string</td><td class="v"><font style="color: #DD0000">#DD0000</font></td><td class="v"><font style="color: #DD0000">#DD0000</font></td></tr>
<tr><td class="e">html_errors</td><td class="v">On</td><td class="v">On</td></tr>
<tr><td class="e">ignore_repeated_errors</td><td class="v">Off</td><td class="v">Off</td></tr>
<tr><td class="e">ignore_repeated_source</td><td class="v">Off</td><td class="v">Off</td></tr>
<tr><td class="e">ignore_user_abort</td><td class="v">Off</td><td class="v">Off</td></tr>
<tr><td class="e">implicit_flush</td><td class="v">Off</td><td class="v">Off</td></tr>
<tr><td class="e">include_path</td><td class="v">.:/usr/share/php</td><td class="v">.:/usr/share/php</td></tr>
<tr><td class="e">input_encoding</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">internal_encoding</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">log_errors</td><td class="v">On</td><td class="v">On</td></tr>
<tr><td class="e">mail.add_x_header</td><td class="v">Off</td><td class="v">Off</td></tr>
<tr><td class="e">mail.force_extra_parameters</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">mail.log</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">mail.mixed_lf_and_crlf</td><td class="v">Off</td><td class="v">Off</td></tr>
<tr><td class="e">max_execution_time</td><td class="v">600</td><td class="v">3600</td></tr>
<tr><td class="e">max_file_uploads</td><td class="v">20</td><td class="v">20</td></tr>
<tr><td class="e">max_input_nesting_level</td><td class="v">64</td><td class="v">64</td></tr>
<tr><td class="e">max_input_time</td><td class="v">3600</td><td class="v">3600</td></tr>
<tr><td class="e">max_input_vars</td><td class="v">100000</td><td class="v">100000</td></tr>
<tr><td class="e">max_multipart_body_parts</td><td class="v">-1</td><td class="v">-1</td></tr>
<tr><td class="e">memory_limit</td><td class="v">5G</td><td class="v">5G</td></tr>
<tr><td class="e">open_basedir</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">output_buffering</td><td class="v">4096</td><td class="v">4096</td></tr>
<tr><td class="e">output_encoding</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">output_handler</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">post_max_size</td><td class="v">5G</td><td class="v">5G</td></tr>
<tr><td class="e">precision</td><td class="v">14</td><td class="v">14</td></tr>
<tr><td class="e">realpath_cache_size</td><td class="v">4096k</td><td class="v">4096k</td></tr>
<tr><td class="e">realpath_cache_ttl</td><td class="v">86400</td><td class="v">86400</td></tr>
<tr><td class="e">register_argc_argv</td><td class="v">Off</td><td class="v">Off</td></tr>
<tr><td class="e">report_memleaks</td><td class="v">On</td><td class="v">On</td></tr>
<tr><td class="e">report_zend_debug</td><td class="v">Off</td><td class="v">Off</td></tr>
<tr><td class="e">request_order</td><td class="v">GP</td><td class="v">GP</td></tr>
<tr><td class="e">sendmail_from</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">sendmail_path</td><td class="v">/usr/sbin/sendmail -t -i</td><td class="v">/usr/sbin/sendmail -t -i</td></tr>
<tr><td class="e">serialize_precision</td><td class="v">-1</td><td class="v">-1</td></tr>
<tr><td class="e">short_open_tag</td><td class="v">On</td><td class="v">On</td></tr>
<tr><td class="e">SMTP</td><td class="v">localhost</td><td class="v">localhost</td></tr>
<tr><td class="e">smtp_port</td><td class="v">25</td><td class="v">25</td></tr>
<tr><td class="e">sys_temp_dir</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">syslog.facility</td><td class="v">LOG_USER</td><td class="v">LOG_USER</td></tr>
<tr><td class="e">syslog.filter</td><td class="v">no-ctrl</td><td class="v">no-ctrl</td></tr>
<tr><td class="e">syslog.ident</td><td class="v">php</td><td class="v">php</td></tr>
<tr><td class="e">unserialize_callback_func</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">upload_max_filesize</td><td class="v">5G</td><td class="v">5G</td></tr>
<tr><td class="e">upload_tmp_dir</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">user_dir</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">user_ini.cache_ttl</td><td class="v">300</td><td class="v">300</td></tr>
<tr><td class="e">user_ini.filename</td><td class="v">.user.ini</td><td class="v">.user.ini</td></tr>
<tr><td class="e">variables_order</td><td class="v">GPCS</td><td class="v">GPCS</td></tr>
<tr><td class="e">xmlrpc_error_number</td><td class="v">0</td><td class="v">0</td></tr>
<tr><td class="e">xmlrpc_errors</td><td class="v">Off</td><td class="v">Off</td></tr>
<tr><td class="e">zend.assertions</td><td class="v">-1</td><td class="v">-1</td></tr>
<tr><td class="e">zend.detect_unicode</td><td class="v">On</td><td class="v">On</td></tr>
<tr><td class="e">zend.enable_gc</td><td class="v">On</td><td class="v">On</td></tr>
<tr><td class="e">zend.exception_ignore_args</td><td class="v">On</td><td class="v">On</td></tr>
<tr><td class="e">zend.exception_string_param_max_len</td><td class="v">0</td><td class="v">0</td></tr>
<tr><td class="e">zend.max_allowed_stack_size</td><td class="v">0</td><td class="v">0</td></tr>
<tr><td class="e">zend.multibyte</td><td class="v">Off</td><td class="v">Off</td></tr>
<tr><td class="e">zend.reserved_stack_size</td><td class="v">0</td><td class="v">0</td></tr>
<tr><td class="e">zend.script_encoding</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">zend.signal_check</td><td class="v">Off</td><td class="v">Off</td></tr>
</table>
<h2><a name="module_ctype" href="#module_ctype">ctype</a></h2>
<table>
<tr><td class="e">ctype functions </td><td class="v">enabled </td></tr>
</table>
<h2><a name="module_curl" href="#module_curl">curl</a></h2>
<table>
<tr><td class="e">cURL support </td><td class="v">enabled </td></tr>
<tr><td class="e">cURL Information </td><td class="v">7.81.0 </td></tr>
<tr><td class="e">Age </td><td class="v">9 </td></tr>
<tr><td class="e">Features </td></tr>
<tr><td class="e">AsynchDNS </td><td class="v">Yes </td></tr>
<tr><td class="e">CharConv </td><td class="v">No </td></tr>
<tr><td class="e">Debug </td><td class="v">No </td></tr>
<tr><td class="e">GSS-Negotiate </td><td class="v">No </td></tr>
<tr><td class="e">IDN </td><td class="v">Yes </td></tr>
<tr><td class="e">IPv6 </td><td class="v">Yes </td></tr>
<tr><td class="e">krb4 </td><td class="v">No </td></tr>
<tr><td class="e">Largefile </td><td class="v">Yes </td></tr>
<tr><td class="e">libz </td><td class="v">Yes </td></tr>
<tr><td class="e">NTLM </td><td class="v">Yes </td></tr>
<tr><td class="e">NTLMWB </td><td class="v">Yes </td></tr>
<tr><td class="e">SPNEGO </td><td class="v">Yes </td></tr>
<tr><td class="e">SSL </td><td class="v">Yes </td></tr>
<tr><td class="e">SSPI </td><td class="v">No </td></tr>
<tr><td class="e">TLS-SRP </td><td class="v">Yes </td></tr>
<tr><td class="e">HTTP2 </td><td class="v">Yes </td></tr>
<tr><td class="e">GSSAPI </td><td class="v">Yes </td></tr>
<tr><td class="e">KERBEROS5 </td><td class="v">Yes </td></tr>
<tr><td class="e">UNIX_SOCKETS </td><td class="v">Yes </td></tr>
<tr><td class="e">PSL </td><td class="v">Yes </td></tr>
<tr><td class="e">HTTPS_PROXY </td><td class="v">Yes </td></tr>
<tr><td class="e">MULTI_SSL </td><td class="v">No </td></tr>
<tr><td class="e">BROTLI </td><td class="v">Yes </td></tr>
<tr><td class="e">ALTSVC </td><td class="v">Yes </td></tr>
<tr><td class="e">HTTP3 </td><td class="v">No </td></tr>
<tr><td class="e">UNICODE </td><td class="v">No </td></tr>
<tr><td class="e">ZSTD </td><td class="v">Yes </td></tr>
<tr><td class="e">HSTS </td><td class="v">Yes </td></tr>
<tr><td class="e">GSASL </td><td class="v">No </td></tr>
<tr><td class="e">Protocols </td><td class="v">dict, file, ftp, ftps, gopher, gophers, http, https, imap, imaps, ldap, ldaps, mqtt, pop3, pop3s, rtmp, rtsp, scp, sftp, smb, smbs, smtp, smtps, telnet, tftp </td></tr>
<tr><td class="e">Host </td><td class="v">x86_64-pc-linux-gnu </td></tr>
<tr><td class="e">SSL Version </td><td class="v">OpenSSL/3.0.2 </td></tr>
<tr><td class="e">ZLib Version </td><td class="v">1.2.11 </td></tr>
<tr><td class="e">libSSH Version </td><td class="v">libssh/0.9.6/openssl/zlib </td></tr>
</table>
<table>
<tr class="h"><th>Directive</th><th>Local Value</th><th>Master Value</th></tr>
<tr><td class="e">curl.cainfo</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
</table>
<h2><a name="module_date" href="#module_date">date</a></h2>
<table>
<tr><td class="e">date/time support </td><td class="v">enabled </td></tr>
<tr><td class="e">timelib version </td><td class="v">2022.10 </td></tr>
<tr><td class="e">&quot;Olson&quot; Timezone Database Version </td><td class="v">0.system </td></tr>
<tr><td class="e">Timezone Database </td><td class="v">internal </td></tr>
<tr><td class="e">Default timezone </td><td class="v">Etc/UTC </td></tr>
</table>
<table>
<tr class="h"><th>Directive</th><th>Local Value</th><th>Master Value</th></tr>
<tr><td class="e">date.default_latitude</td><td class="v">31.7667</td><td class="v">31.7667</td></tr>
<tr><td class="e">date.default_longitude</td><td class="v">35.2333</td><td class="v">35.2333</td></tr>
<tr><td class="e">date.sunrise_zenith</td><td class="v">90.833333</td><td class="v">90.833333</td></tr>
<tr><td class="e">date.sunset_zenith</td><td class="v">90.833333</td><td class="v">90.833333</td></tr>
<tr><td class="e">date.timezone</td><td class="v">Europe/Berlin</td><td class="v">Europe/Berlin</td></tr>
</table>
<h2><a name="module_dom" href="#module_dom">dom</a></h2>
<table>
<tr><td class="e">DOM/XML </td><td class="v">enabled </td></tr>
<tr><td class="e">DOM/XML API Version </td><td class="v">20031129 </td></tr>
<tr><td class="e">libxml Version </td><td class="v">2.9.13 </td></tr>
<tr><td class="e">HTML Support </td><td class="v">enabled </td></tr>
<tr><td class="e">XPath Support </td><td class="v">enabled </td></tr>
<tr><td class="e">XPointer Support </td><td class="v">enabled </td></tr>
<tr><td class="e">Schema Support </td><td class="v">enabled </td></tr>
<tr><td class="e">RelaxNG Support </td><td class="v">enabled </td></tr>
</table>
<h2><a name="module_exif" href="#module_exif">exif</a></h2>
<table>
<tr><td class="e">EXIF Support </td><td class="v">enabled </td></tr>
<tr><td class="e">Supported EXIF Version </td><td class="v">0220 </td></tr>
<tr><td class="e">Supported filetypes </td><td class="v">JPEG, TIFF </td></tr>
<tr><td class="e">Multibyte decoding support using mbstring </td><td class="v">enabled </td></tr>
<tr><td class="e">Extended EXIF tag formats </td><td class="v">Canon, Casio, Fujifilm, Nikon, Olympus, Samsung, Panasonic, DJI, Sony, Pentax, Minolta, Sigma, Foveon, Kyocera, Ricoh, AGFA, Epson </td></tr>
</table>
<table>
<tr class="h"><th>Directive</th><th>Local Value</th><th>Master Value</th></tr>
<tr><td class="e">exif.decode_jis_intel</td><td class="v">JIS</td><td class="v">JIS</td></tr>
<tr><td class="e">exif.decode_jis_motorola</td><td class="v">JIS</td><td class="v">JIS</td></tr>
<tr><td class="e">exif.decode_unicode_intel</td><td class="v">UCS-2LE</td><td class="v">UCS-2LE</td></tr>
<tr><td class="e">exif.decode_unicode_motorola</td><td class="v">UCS-2BE</td><td class="v">UCS-2BE</td></tr>
<tr><td class="e">exif.encode_jis</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">exif.encode_unicode</td><td class="v">ISO-8859-15</td><td class="v">ISO-8859-15</td></tr>
</table>
<h2><a name="module_ffi" href="#module_ffi">FFI</a></h2>
<table>
<tr><td class="e">FFI support </td><td class="v">enabled </td></tr>
</table>
<table>
<tr class="h"><th>Directive</th><th>Local Value</th><th>Master Value</th></tr>
<tr><td class="e">ffi.enable</td><td class="v">preload</td><td class="v">preload</td></tr>
<tr><td class="e">ffi.preload</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
</table>
<h2><a name="module_fileinfo" href="#module_fileinfo">fileinfo</a></h2>
<table>
<tr><td class="e">fileinfo support </td><td class="v">enabled </td></tr>
<tr><td class="e">libmagic </td><td class="v">543 </td></tr>
</table>
<h2><a name="module_filter" href="#module_filter">filter</a></h2>
<table>
<tr><td class="e">Input Validation and Filtering </td><td class="v">enabled </td></tr>
</table>
<table>
<tr class="h"><th>Directive</th><th>Local Value</th><th>Master Value</th></tr>
<tr><td class="e">filter.default</td><td class="v">unsafe_raw</td><td class="v">unsafe_raw</td></tr>
<tr><td class="e">filter.default_flags</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
</table>
<h2><a name="module_ftp" href="#module_ftp">ftp</a></h2>
<table>
<tr><td class="e">FTP support </td><td class="v">enabled </td></tr>
<tr><td class="e">FTPS support </td><td class="v">enabled </td></tr>
</table>
<h2><a name="module_gd" href="#module_gd">gd</a></h2>
<table>
<tr><td class="e">GD Support </td><td class="v">enabled </td></tr>
<tr><td class="e">GD headers Version </td><td class="v">2.3.0 </td></tr>
<tr><td class="e">GD library Version </td><td class="v">2.3.0 </td></tr>
<tr><td class="e">FreeType Support </td><td class="v">enabled </td></tr>
<tr><td class="e">FreeType Linkage </td><td class="v">with freetype </td></tr>
<tr><td class="e">GIF Read Support </td><td class="v">enabled </td></tr>
<tr><td class="e">GIF Create Support </td><td class="v">enabled </td></tr>
<tr><td class="e">JPEG Support </td><td class="v">enabled </td></tr>
<tr><td class="e">PNG Support </td><td class="v">enabled </td></tr>
<tr><td class="e">WBMP Support </td><td class="v">enabled </td></tr>
<tr><td class="e">XPM Support </td><td class="v">enabled </td></tr>
<tr><td class="e">XBM Support </td><td class="v">enabled </td></tr>
<tr><td class="e">WebP Support </td><td class="v">enabled </td></tr>
<tr><td class="e">BMP Support </td><td class="v">enabled </td></tr>
<tr><td class="e">TGA Read Support </td><td class="v">enabled </td></tr>
</table>
<table>
<tr class="h"><th>Directive</th><th>Local Value</th><th>Master Value</th></tr>
<tr><td class="e">gd.jpeg_ignore_warning</td><td class="v">On</td><td class="v">On</td></tr>
</table>
<h2><a name="module_gettext" href="#module_gettext">gettext</a></h2>
<table>
<tr><td class="e">GetText Support </td><td class="v">enabled </td></tr>
</table>
<h2><a name="module_hash" href="#module_hash">hash</a></h2>
<table>
<tr><td class="e">hash support </td><td class="v">enabled </td></tr>
<tr><td class="e">Hashing Engines </td><td class="v">md2 md4 md5 sha1 sha224 sha256 sha384 sha512/224 sha512/256 sha512 sha3-224 sha3-256 sha3-384 sha3-512 ripemd128 ripemd160 ripemd256 ripemd320 whirlpool tiger128,3 tiger160,3 tiger192,3 tiger128,4 tiger160,4 tiger192,4 snefru snefru256 gost gost-crypto adler32 crc32 crc32b crc32c fnv132 fnv1a32 fnv164 fnv1a64 joaat murmur3a murmur3c murmur3f xxh32 xxh64 xxh3 xxh128 haval128,3 haval160,3 haval192,3 haval224,3 haval256,3 haval128,4 haval160,4 haval192,4 haval224,4 haval256,4 haval128,5 haval160,5 haval192,5 haval224,5 haval256,5  </td></tr>
</table>
<table>
<tr><td class="e">MHASH support </td><td class="v">Enabled </td></tr>
<tr><td class="e">MHASH API Version </td><td class="v">Emulated Support </td></tr>
</table>
<h2><a name="module_iconv" href="#module_iconv">iconv</a></h2>
<table>
<tr><td class="e">iconv support </td><td class="v">enabled </td></tr>
<tr><td class="e">iconv implementation </td><td class="v">glibc </td></tr>
<tr><td class="e">iconv library version </td><td class="v">2.35 </td></tr>
</table>
<table>
<tr class="h"><th>Directive</th><th>Local Value</th><th>Master Value</th></tr>
<tr><td class="e">iconv.input_encoding</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">iconv.internal_encoding</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">iconv.output_encoding</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
</table>
<h2><a name="module_imagick" href="#module_imagick">imagick</a></h2>
<table>
<tr class="h"><th>imagick module</th><th>enabled</th></tr>
<tr><td class="e">imagick module version </td><td class="v">3.7.0 </td></tr>
<tr><td class="e">imagick classes </td><td class="v">Imagick, ImagickDraw, ImagickPixel, ImagickPixelIterator, ImagickKernel </td></tr>
<tr><td class="e">Imagick compiled with ImageMagick version </td><td class="v">ImageMagick 6.9.11-60 Q16 x86_64 2021-01-25 https://imagemagick.org </td></tr>
<tr><td class="e">Imagick using ImageMagick library version </td><td class="v">ImageMagick 6.9.11-60 Q16 x86_64 2021-01-25 https://imagemagick.org </td></tr>
<tr><td class="e">ImageMagick copyright </td><td class="v">(C) 1999-2021 ImageMagick Studio LLC </td></tr>
<tr><td class="e">ImageMagick release date </td><td class="v">2021-01-25 </td></tr>
<tr><td class="e">ImageMagick number of supported formats:  </td><td class="v">247 </td></tr>
<tr><td class="e">ImageMagick supported formats </td><td class="v">3FR, 3G2, 3GP, AAI, AI, APNG, ART, ARW, AVI, AVIF, AVS, BGR, BGRA, BGRO, BIE, BMP, BMP2, BMP3, BRF, CAL, CALS, CANVAS, CAPTION, CIN, CIP, CLIP, CMYK, CMYKA, CR2, CR3, CRW, CUR, CUT, DATA, DCM, DCR, DCX, DDS, DFONT, DJVU, DNG, DOT, DPX, DXT1, DXT5, EPDF, EPI, EPS, EPS2, EPS3, EPSF, EPSI, EPT, EPT2, EPT3, ERF, EXR, FAX, FILE, FITS, FRACTAL, FTP, FTS, G3, G4, GIF, GIF87, GRADIENT, GRAY, GRAYA, GROUP4, GV, H, HALD, HDR, HEIC, HISTOGRAM, HRZ, HTM, HTML, HTTP, HTTPS, ICB, ICO, ICON, IIQ, INFO, INLINE, IPL, ISOBRL, ISOBRL6, J2C, J2K, JBG, JBIG, JNG, JNX, JP2, JPC, JPE, JPEG, JPG, JPM, JPS, JPT, JSON, K25, KDC, LABEL, M2V, M4V, MAC, MAGICK, MAP, MASK, MAT, MATTE, MEF, MIFF, MKV, MNG, MONO, MOV, MP4, MPC, MPG, MRW, MSL, MSVG, MTV, MVG, NEF, NRW, NULL, ORF, OTB, OTF, PAL, PALM, PAM, PANGO, PATTERN, PBM, PCD, PCDS, PCL, PCT, PCX, PDB, PDF, PDFA, PEF, PES, PFA, PFB, PFM, PGM, PGX, PICON, PICT, PIX, PJPEG, PLASMA, PNG, PNG00, PNG24, PNG32, PNG48, PNG64, PNG8, PNM, POCKETMOD, PPM, PREVIEW, PS, PS2, PS3, PSB, PSD, PTIF, PWP, RADIAL-GRADIENT, RAF, RAS, RAW, RGB, RGBA, RGBO, RGF, RLA, RLE, RMF, RW2, SCR, SCT, SFW, SGI, SHTML, SIX, SIXEL, SPARSE-COLOR, SR2, SRF, STEGANO, SUN, SVG, SVGZ, TEXT, TGA, THUMBNAIL, TIFF, TIFF64, TILE, TIM, TTC, TTF, TXT, UBRL, UBRL6, UIL, UYVY, VDA, VICAR, VID, VIDEO, VIFF, VIPS, VST, WBMP, WEBM, WEBP, WMF, WMV, WMZ, WPG, X, X3F, XBM, XC, XCF, XPM, XPS, XV, XWD, YCbCr, YCbCrA, YUV </td></tr>
</table>
<table>
<tr class="h"><th>Directive</th><th>Local Value</th><th>Master Value</th></tr>
<tr><td class="e">imagick.allow_zero_dimension_images</td><td class="v">0</td><td class="v">0</td></tr>
<tr><td class="e">imagick.locale_fix</td><td class="v">0</td><td class="v">0</td></tr>
<tr><td class="e">imagick.progress_monitor</td><td class="v">0</td><td class="v">0</td></tr>
<tr><td class="e">imagick.set_single_thread</td><td class="v">1</td><td class="v">1</td></tr>
<tr><td class="e">imagick.shutdown_sleep_count</td><td class="v">10</td><td class="v">10</td></tr>
<tr><td class="e">imagick.skip_version_check</td><td class="v">1</td><td class="v">1</td></tr>
</table>
<h2><a name="module_imap" href="#module_imap">imap</a></h2>
<table>
<tr><td class="e">IMAP c-Client Version </td><td class="v">2007f </td></tr>
<tr><td class="e">SSL Support </td><td class="v">enabled </td></tr>
<tr><td class="e">Kerberos Support </td><td class="v">enabled </td></tr>
</table>
<table>
<tr class="h"><th>Directive</th><th>Local Value</th><th>Master Value</th></tr>
<tr><td class="e">imap.enable_insecure_rsh</td><td class="v">Off</td><td class="v">Off</td></tr>
</table>
<h2><a name="module_intl" href="#module_intl">intl</a></h2>
<table>
<tr><td class="e">Internationalization support </td><td class="v">enabled </td></tr>
<tr><td class="e">ICU version </td><td class="v">70.1 </td></tr>
<tr><td class="e">ICU Data version </td><td class="v">70.1 </td></tr>
<tr><td class="e">ICU TZData version </td><td class="v">2024a </td></tr>
<tr><td class="e">ICU Unicode version </td><td class="v">14.0 </td></tr>
</table>
<table>
<tr class="h"><th>Directive</th><th>Local Value</th><th>Master Value</th></tr>
<tr><td class="e">intl.default_locale</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">intl.error_level</td><td class="v">0</td><td class="v">0</td></tr>
<tr><td class="e">intl.use_exceptions</td><td class="v">Off</td><td class="v">Off</td></tr>
</table>
<h2><a name="module_json" href="#module_json">json</a></h2>
<table>
<tr><td class="e">json support </td><td class="v">enabled </td></tr>
</table>
<h2><a name="module_ldap" href="#module_ldap">ldap</a></h2>
<table>
<tr><td class="e">LDAP Support </td><td class="v">enabled </td></tr>
<tr><td class="e">Total Links </td><td class="v">0/unlimited </td></tr>
<tr><td class="e">API Version </td><td class="v">3001 </td></tr>
<tr><td class="e">Vendor Name </td><td class="v">OpenLDAP </td></tr>
<tr><td class="e">Vendor Version </td><td class="v">20516 </td></tr>
<tr><td class="e">SASL Support </td><td class="v">Enabled </td></tr>
</table>
<table>
<tr class="h"><th>Directive</th><th>Local Value</th><th>Master Value</th></tr>
<tr><td class="e">ldap.max_links</td><td class="v">Unlimited</td><td class="v">Unlimited</td></tr>
</table>
<h2><a name="module_libxml" href="#module_libxml">libxml</a></h2>
<table>
<tr><td class="e">libXML support </td><td class="v">active </td></tr>
<tr><td class="e">libXML Compiled Version </td><td class="v">2.9.13 </td></tr>
<tr><td class="e">libXML Loaded Version </td><td class="v">20913 </td></tr>
<tr><td class="e">libXML streams </td><td class="v">enabled </td></tr>
</table>
<h2><a name="module_mbstring" href="#module_mbstring">mbstring</a></h2>
<table>
<tr><td class="e">Multibyte Support </td><td class="v">enabled </td></tr>
<tr><td class="e">Multibyte string engine </td><td class="v">libmbfl </td></tr>
<tr><td class="e">HTTP input encoding translation </td><td class="v">disabled </td></tr>
<tr><td class="e">libmbfl version </td><td class="v">1.3.2 </td></tr>
</table>
<table>
<tr class="h"><th>mbstring extension makes use of "streamable kanji code filter and converter", which is distributed under the GNU Lesser General Public License version 2.1.</th></tr>
</table>
<table>
<tr><td class="e">Multibyte (japanese) regex support </td><td class="v">enabled </td></tr>
<tr><td class="e">Multibyte regex (oniguruma) version </td><td class="v">6.9.7 </td></tr>
</table>
<table>
<tr class="h"><th>Directive</th><th>Local Value</th><th>Master Value</th></tr>
<tr><td class="e">mbstring.detect_order</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">mbstring.encoding_translation</td><td class="v">Off</td><td class="v">Off</td></tr>
<tr><td class="e">mbstring.http_input</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">mbstring.http_output</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">mbstring.http_output_conv_mimetypes</td><td class="v">^(text/|application/xhtml\+xml)</td><td class="v">^(text/|application/xhtml\+xml)</td></tr>
<tr><td class="e">mbstring.internal_encoding</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">mbstring.language</td><td class="v">neutral</td><td class="v">neutral</td></tr>
<tr><td class="e">mbstring.regex_retry_limit</td><td class="v">1000000</td><td class="v">1000000</td></tr>
<tr><td class="e">mbstring.regex_stack_limit</td><td class="v">100000</td><td class="v">100000</td></tr>
<tr><td class="e">mbstring.strict_detection</td><td class="v">Off</td><td class="v">Off</td></tr>
<tr><td class="e">mbstring.substitute_character</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
</table>
<h2><a name="module_memcached" href="#module_memcached">memcached</a></h2>
<table>
<tr class="h"><th>memcached support</th><th>enabled</th></tr>
<tr><td class="e">Version </td><td class="v">3.2.0 </td></tr>
<tr><td class="e">libmemcached version </td><td class="v">1.0.18 </td></tr>
<tr><td class="e">SASL support </td><td class="v">yes </td></tr>
<tr><td class="e">Session support </td><td class="v">yes </td></tr>
<tr><td class="e">igbinary support </td><td class="v">no </td></tr>
<tr><td class="e">json support </td><td class="v">no </td></tr>
<tr><td class="e">msgpack support </td><td class="v">no </td></tr>
</table>
<table>
<tr class="h"><th>Directive</th><th>Local Value</th><th>Master Value</th></tr>
<tr><td class="e">memcached.compression_factor</td><td class="v">1.3</td><td class="v">1.3</td></tr>
<tr><td class="e">memcached.compression_threshold</td><td class="v">2000</td><td class="v">2000</td></tr>
<tr><td class="e">memcached.compression_type</td><td class="v">fastlz</td><td class="v">fastlz</td></tr>
<tr><td class="e">memcached.default_binary_protocol</td><td class="v">Off</td><td class="v">Off</td></tr>
<tr><td class="e">memcached.default_connect_timeout</td><td class="v">0</td><td class="v">0</td></tr>
<tr><td class="e">memcached.default_consistent_hash</td><td class="v">Off</td><td class="v">Off</td></tr>
<tr><td class="e">memcached.serializer</td><td class="v">php</td><td class="v">php</td></tr>
<tr><td class="e">memcached.sess_binary_protocol</td><td class="v">On</td><td class="v">On</td></tr>
<tr><td class="e">memcached.sess_connect_timeout</td><td class="v">0</td><td class="v">0</td></tr>
<tr><td class="e">memcached.sess_consistent_hash</td><td class="v">On</td><td class="v">On</td></tr>
<tr><td class="e">memcached.sess_consistent_hash_type</td><td class="v">ketama</td><td class="v">ketama</td></tr>
<tr><td class="e">memcached.sess_lock_expire</td><td class="v">0</td><td class="v">0</td></tr>
<tr><td class="e">memcached.sess_lock_max_wait</td><td class="v">not set</td><td class="v">not set</td></tr>
<tr><td class="e">memcached.sess_lock_retries</td><td class="v">5</td><td class="v">5</td></tr>
<tr><td class="e">memcached.sess_lock_wait</td><td class="v">not set</td><td class="v">not set</td></tr>
<tr><td class="e">memcached.sess_lock_wait_max</td><td class="v">150</td><td class="v">150</td></tr>
<tr><td class="e">memcached.sess_lock_wait_min</td><td class="v">150</td><td class="v">150</td></tr>
<tr><td class="e">memcached.sess_locking</td><td class="v">On</td><td class="v">On</td></tr>
<tr><td class="e">memcached.sess_number_of_replicas</td><td class="v">0</td><td class="v">0</td></tr>
<tr><td class="e">memcached.sess_persistent</td><td class="v">Off</td><td class="v">Off</td></tr>
<tr><td class="e">memcached.sess_prefix</td><td class="v">memc.sess.key.</td><td class="v">memc.sess.key.</td></tr>
<tr><td class="e">memcached.sess_randomize_replica_read</td><td class="v">Off</td><td class="v">Off</td></tr>
<tr><td class="e">memcached.sess_remove_failed_servers</td><td class="v">Off</td><td class="v">Off</td></tr>
<tr><td class="e">memcached.sess_sasl_password</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">memcached.sess_sasl_username</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">memcached.sess_server_failure_limit</td><td class="v">0</td><td class="v">0</td></tr>
<tr><td class="e">memcached.store_retry_count</td><td class="v">0</td><td class="v">0</td></tr>
</table>
<h2><a name="module_mysqli" href="#module_mysqli">mysqli</a></h2>
<table>
<tr><td class="e">MysqlI Support </td><td class="v">enabled </td></tr>
<tr><td class="e">Client API library version </td><td class="v">mysqlnd 8.3.4-jammy </td></tr>
<tr><td class="e">Active Persistent Links </td><td class="v">0 </td></tr>
<tr><td class="e">Inactive Persistent Links </td><td class="v">0 </td></tr>
<tr><td class="e">Active Links </td><td class="v">0 </td></tr>
</table>
<table>
<tr class="h"><th>Directive</th><th>Local Value</th><th>Master Value</th></tr>
<tr><td class="e">mysqli.allow_local_infile</td><td class="v">Off</td><td class="v">Off</td></tr>
<tr><td class="e">mysqli.allow_persistent</td><td class="v">On</td><td class="v">On</td></tr>
<tr><td class="e">mysqli.default_host</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">mysqli.default_port</td><td class="v">3306</td><td class="v">3306</td></tr>
<tr><td class="e">mysqli.default_pw</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">mysqli.default_socket</td><td class="v">/var/run/mysqld/mysqld.sock</td><td class="v">/var/run/mysqld/mysqld.sock</td></tr>
<tr><td class="e">mysqli.default_user</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">mysqli.local_infile_directory</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">mysqli.max_links</td><td class="v">Unlimited</td><td class="v">Unlimited</td></tr>
<tr><td class="e">mysqli.max_persistent</td><td class="v">Unlimited</td><td class="v">Unlimited</td></tr>
<tr><td class="e">mysqli.rollback_on_cached_plink</td><td class="v">Off</td><td class="v">Off</td></tr>
</table>
<h2><a name="module_mysqlnd" href="#module_mysqlnd">mysqlnd</a></h2>
<table>
<tr><td class="e">mysqlnd </td><td class="v">enabled </td></tr>
<tr><td class="e">Version </td><td class="v">mysqlnd 8.3.4-jammy </td></tr>
<tr><td class="e">Compression </td><td class="v">supported </td></tr>
<tr><td class="e">core SSL </td><td class="v">supported </td></tr>
<tr><td class="e">extended SSL </td><td class="v">supported </td></tr>
<tr><td class="e">Command buffer size </td><td class="v">4096 </td></tr>
<tr><td class="e">Read buffer size </td><td class="v">32768 </td></tr>
<tr><td class="e">Read timeout </td><td class="v">86400 </td></tr>
<tr><td class="e">Collecting statistics </td><td class="v">Yes </td></tr>
<tr><td class="e">Collecting memory statistics </td><td class="v">No </td></tr>
<tr><td class="e">Tracing </td><td class="v">n/a </td></tr>
<tr><td class="e">Loaded plugins </td><td class="v">mysqlnd,debug_trace,auth_plugin_mysql_native_password,auth_plugin_mysql_clear_password,auth_plugin_caching_sha2_password,auth_plugin_sha256_password </td></tr>
<tr><td class="e">API Extensions </td><td class="v">mysqli,pdo_mysql </td></tr>
</table>
<h2><a name="module_openssl" href="#module_openssl">openssl</a></h2>
<table>
<tr><td class="e">OpenSSL support </td><td class="v">enabled </td></tr>
<tr><td class="e">OpenSSL Library Version </td><td class="v">OpenSSL 3.0.2 15 Mar 2022 </td></tr>
<tr><td class="e">OpenSSL Header Version </td><td class="v">OpenSSL 3.0.2 15 Mar 2022 </td></tr>
<tr><td class="e">Openssl default config </td><td class="v">/usr/lib/ssl/openssl.cnf </td></tr>
</table>
<table>
<tr class="h"><th>Directive</th><th>Local Value</th><th>Master Value</th></tr>
<tr><td class="e">openssl.cafile</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">openssl.capath</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
</table>
<h2><a name="module_pcre" href="#module_pcre">pcre</a></h2>
<table>
<tr><td class="e">PCRE (Perl Compatible Regular Expressions) Support </td><td class="v">enabled </td></tr>
<tr><td class="e">PCRE Library Version </td><td class="v">10.39 2021-10-29 </td></tr>
<tr><td class="e">PCRE Unicode Version </td><td class="v">14.0.0 </td></tr>
<tr><td class="e">PCRE JIT Support </td><td class="v">enabled </td></tr>
<tr><td class="e">PCRE JIT Target </td><td class="v">x86 64bit (little endian + unaligned) </td></tr>
</table>
<table>
<tr class="h"><th>Directive</th><th>Local Value</th><th>Master Value</th></tr>
<tr><td class="e">pcre.backtrack_limit</td><td class="v">1000000</td><td class="v">1000000</td></tr>
<tr><td class="e">pcre.jit</td><td class="v">On</td><td class="v">On</td></tr>
<tr><td class="e">pcre.recursion_limit</td><td class="v">100000</td><td class="v">100000</td></tr>
</table>
<h2><a name="module_pdo" href="#module_pdo">PDO</a></h2>
<table>
<tr><td class="e">PDO support </td><td class="v">enabled </td></tr>
<tr><td class="e">PDO drivers </td><td class="v">mysql, sqlite </td></tr>
</table>
<h2><a name="module_pdo_mysql" href="#module_pdo_mysql">pdo_mysql</a></h2>
<table>
<tr><td class="e">PDO Driver for MySQL </td><td class="v">enabled </td></tr>
<tr><td class="e">Client API version </td><td class="v">mysqlnd 8.3.4-jammy </td></tr>
</table>
<table>
<tr class="h"><th>Directive</th><th>Local Value</th><th>Master Value</th></tr>
<tr><td class="e">pdo_mysql.default_socket</td><td class="v">/var/run/mysqld/mysqld.sock</td><td class="v">/var/run/mysqld/mysqld.sock</td></tr>
</table>
<h2><a name="module_pdo_sqlite" href="#module_pdo_sqlite">pdo_sqlite</a></h2>
<table>
<tr><td class="e">PDO Driver for SQLite 3.x </td><td class="v">enabled </td></tr>
<tr><td class="e">SQLite Library </td><td class="v">3.37.2 </td></tr>
</table>
<h2><a name="module_phar" href="#module_phar">Phar</a></h2>
<table>
<tr><td class="e">Phar: PHP Archive support </td><td class="v">enabled </td></tr>
<tr><td class="e">Phar API version </td><td class="v">1.1.1 </td></tr>
<tr><td class="e">Phar-based phar archives </td><td class="v">enabled </td></tr>
<tr><td class="e">Tar-based phar archives </td><td class="v">enabled </td></tr>
<tr><td class="e">ZIP-based phar archives </td><td class="v">enabled </td></tr>
<tr><td class="e">gzip compression </td><td class="v">enabled </td></tr>
<tr><td class="e">bzip2 compression </td><td class="v">disabled (install ext/bz2) </td></tr>
<tr><td class="e">Native OpenSSL support </td><td class="v">enabled </td></tr>
</table>
<table>
<tr class="v"><td>
Phar based on pear/PHP_Archive, original concept by Davey Shafik.<br />Phar fully realized by Gregory Beaver and Marcus Boerger.<br />Portions of tar implementation Copyright (c) 2003-2009 Tim Kientzle.</td></tr>
</table>
<table>
<tr class="h"><th>Directive</th><th>Local Value</th><th>Master Value</th></tr>
<tr><td class="e">phar.cache_list</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">phar.readonly</td><td class="v">On</td><td class="v">On</td></tr>
<tr><td class="e">phar.require_hash</td><td class="v">On</td><td class="v">On</td></tr>
</table>
<h2><a name="module_posix" href="#module_posix">posix</a></h2>
<table>
<tr><td class="e">POSIX support </td><td class="v">enabled </td></tr>
</table>
<h2><a name="module_random" href="#module_random">random</a></h2>
<table>
<tr><td class="e">Version </td><td class="v">8.3.4-jammy </td></tr>
</table>
<h2><a name="module_readline" href="#module_readline">readline</a></h2>
<table>
<tr><td class="e">Readline Support </td><td class="v">enabled </td></tr>
<tr><td class="e">Readline library </td><td class="v">EditLine wrapper </td></tr>
</table>
<table>
<tr class="h"><th>Directive</th><th>Local Value</th><th>Master Value</th></tr>
<tr><td class="e">cli.pager</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">cli.prompt</td><td class="v">\b \&gt; </td><td class="v">\b \&gt; </td></tr>
</table>
<h2><a name="module_redis" href="#module_redis">redis</a></h2>
<table>
<tr class="h"><th>Redis Support</th><th>enabled</th></tr>
<tr><td class="e">Redis Version </td><td class="v">6.0.2 </td></tr>
<tr><td class="e">Redis Sentinel Version </td><td class="v">1.0 </td></tr>
<tr><td class="e">Available serializers </td><td class="v">php, json </td></tr>
</table>
<table>
<tr class="h"><th>Directive</th><th>Local Value</th><th>Master Value</th></tr>
<tr><td class="e">redis.arrays.algorithm</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">redis.arrays.auth</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">redis.arrays.autorehash</td><td class="v">0</td><td class="v">0</td></tr>
<tr><td class="e">redis.arrays.connecttimeout</td><td class="v">0</td><td class="v">0</td></tr>
<tr><td class="e">redis.arrays.consistent</td><td class="v">0</td><td class="v">0</td></tr>
<tr><td class="e">redis.arrays.distributor</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">redis.arrays.functions</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">redis.arrays.hosts</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">redis.arrays.index</td><td class="v">0</td><td class="v">0</td></tr>
<tr><td class="e">redis.arrays.lazyconnect</td><td class="v">0</td><td class="v">0</td></tr>
<tr><td class="e">redis.arrays.names</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">redis.arrays.pconnect</td><td class="v">0</td><td class="v">0</td></tr>
<tr><td class="e">redis.arrays.previous</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">redis.arrays.readtimeout</td><td class="v">0</td><td class="v">0</td></tr>
<tr><td class="e">redis.arrays.retryinterval</td><td class="v">0</td><td class="v">0</td></tr>
<tr><td class="e">redis.clusters.auth</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">redis.clusters.cache_slots</td><td class="v">0</td><td class="v">0</td></tr>
<tr><td class="e">redis.clusters.persistent</td><td class="v">0</td><td class="v">0</td></tr>
<tr><td class="e">redis.clusters.read_timeout</td><td class="v">0</td><td class="v">0</td></tr>
<tr><td class="e">redis.clusters.seeds</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">redis.clusters.timeout</td><td class="v">0</td><td class="v">0</td></tr>
<tr><td class="e">redis.pconnect.connection_limit</td><td class="v">0</td><td class="v">0</td></tr>
<tr><td class="e">redis.pconnect.echo_check_liveness</td><td class="v">1</td><td class="v">1</td></tr>
<tr><td class="e">redis.pconnect.pool_detect_dirty</td><td class="v">0</td><td class="v">0</td></tr>
<tr><td class="e">redis.pconnect.pool_pattern</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">redis.pconnect.pool_poll_timeout</td><td class="v">0</td><td class="v">0</td></tr>
<tr><td class="e">redis.pconnect.pooling_enabled</td><td class="v">1</td><td class="v">1</td></tr>
<tr><td class="e">redis.session.early_refresh</td><td class="v">0</td><td class="v">0</td></tr>
<tr><td class="e">redis.session.lock_expire</td><td class="v">0</td><td class="v">0</td></tr>
<tr><td class="e">redis.session.lock_retries</td><td class="v">100</td><td class="v">100</td></tr>
<tr><td class="e">redis.session.lock_wait_time</td><td class="v">20000</td><td class="v">20000</td></tr>
<tr><td class="e">redis.session.locking_enabled</td><td class="v">0</td><td class="v">0</td></tr>
</table>
<h2><a name="module_reflection" href="#module_reflection">Reflection</a></h2>
<table>
<tr><td class="e">Reflection </td><td class="v">enabled </td></tr>
</table>
<h2><a name="module_session" href="#module_session">session</a></h2>
<table>
<tr><td class="e">Session Support </td><td class="v">enabled </td></tr>
<tr><td class="e">Registered save handlers </td><td class="v">files user memcached redis rediscluster  </td></tr>
<tr><td class="e">Registered serializer handlers </td><td class="v">php_serialize php php_binary  </td></tr>
</table>
<table>
<tr class="h"><th>Directive</th><th>Local Value</th><th>Master Value</th></tr>
<tr><td class="e">session.auto_start</td><td class="v">Off</td><td class="v">Off</td></tr>
<tr><td class="e">session.cache_expire</td><td class="v">180</td><td class="v">180</td></tr>
<tr><td class="e">session.cache_limiter</td><td class="v"><i>no value</i></td><td class="v">nocache</td></tr>
<tr><td class="e">session.cookie_domain</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">session.cookie_httponly</td><td class="v">Off</td><td class="v">Off</td></tr>
<tr><td class="e">session.cookie_lifetime</td><td class="v">0</td><td class="v">0</td></tr>
<tr><td class="e">session.cookie_path</td><td class="v">/</td><td class="v">/</td></tr>
<tr><td class="e">session.cookie_samesite</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">session.cookie_secure</td><td class="v">Off</td><td class="v">Off</td></tr>
<tr><td class="e">session.gc_divisor</td><td class="v">1000</td><td class="v">1000</td></tr>
<tr><td class="e">session.gc_maxlifetime</td><td class="v">86400</td><td class="v">86400</td></tr>
<tr><td class="e">session.gc_probability</td><td class="v">0</td><td class="v">0</td></tr>
<tr><td class="e">session.lazy_write</td><td class="v">On</td><td class="v">On</td></tr>
<tr><td class="e">session.name</td><td class="v">filemanager</td><td class="v">PHPSESSID</td></tr>
<tr><td class="e">session.referer_check</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">session.save_handler</td><td class="v">files</td><td class="v">files</td></tr>
<tr><td class="e">session.save_path</td><td class="v">0;777;/var/lib/php/sessions</td><td class="v">0;777;/var/lib/php/sessions</td></tr>
<tr><td class="e">session.serialize_handler</td><td class="v">php</td><td class="v">php</td></tr>
<tr><td class="e">session.sid_bits_per_character</td><td class="v">5</td><td class="v">5</td></tr>
<tr><td class="e">session.sid_length</td><td class="v">26</td><td class="v">26</td></tr>
<tr><td class="e">session.upload_progress.cleanup</td><td class="v">On</td><td class="v">On</td></tr>
<tr><td class="e">session.upload_progress.enabled</td><td class="v">On</td><td class="v">On</td></tr>
<tr><td class="e">session.upload_progress.freq</td><td class="v">1%</td><td class="v">1%</td></tr>
<tr><td class="e">session.upload_progress.min_freq</td><td class="v">1</td><td class="v">1</td></tr>
<tr><td class="e">session.upload_progress.name</td><td class="v">PHP_SESSION_UPLOAD_PROGRESS</td><td class="v">PHP_SESSION_UPLOAD_PROGRESS</td></tr>
<tr><td class="e">session.upload_progress.prefix</td><td class="v">upload_progress_</td><td class="v">upload_progress_</td></tr>
<tr><td class="e">session.use_cookies</td><td class="v">On</td><td class="v">On</td></tr>
<tr><td class="e">session.use_only_cookies</td><td class="v">On</td><td class="v">On</td></tr>
<tr><td class="e">session.use_strict_mode</td><td class="v">Off</td><td class="v">Off</td></tr>
<tr><td class="e">session.use_trans_sid</td><td class="v">Off</td><td class="v">Off</td></tr>
</table>
<h2><a name="module_shmop" href="#module_shmop">shmop</a></h2>
<table>
<tr><td class="e">shmop support </td><td class="v">enabled </td></tr>
</table>
<h2><a name="module_simplexml" href="#module_simplexml">SimpleXML</a></h2>
<table>
<tr><td class="e">SimpleXML support </td><td class="v">enabled </td></tr>
<tr><td class="e">Schema support </td><td class="v">enabled </td></tr>
</table>
<h2><a name="module_soap" href="#module_soap">soap</a></h2>
<table>
<tr><td class="e">Soap Client </td><td class="v">enabled </td></tr>
<tr><td class="e">Soap Server </td><td class="v">enabled </td></tr>
</table>
<table>
<tr class="h"><th>Directive</th><th>Local Value</th><th>Master Value</th></tr>
<tr><td class="e">soap.wsdl_cache</td><td class="v">1</td><td class="v">1</td></tr>
<tr><td class="e">soap.wsdl_cache_dir</td><td class="v">/tmp</td><td class="v">/tmp</td></tr>
<tr><td class="e">soap.wsdl_cache_enabled</td><td class="v">On</td><td class="v">On</td></tr>
<tr><td class="e">soap.wsdl_cache_limit</td><td class="v">5</td><td class="v">5</td></tr>
<tr><td class="e">soap.wsdl_cache_ttl</td><td class="v">86400</td><td class="v">86400</td></tr>
</table>
<h2><a name="module_sockets" href="#module_sockets">sockets</a></h2>
<table>
<tr><td class="e">Sockets Support </td><td class="v">enabled </td></tr>
</table>
<h2><a name="module_sodium" href="#module_sodium">sodium</a></h2>
<table>
<tr><td class="e">sodium support </td><td class="v">enabled </td></tr>
<tr><td class="e">libsodium headers version </td><td class="v">1.0.18 </td></tr>
<tr><td class="e">libsodium library version </td><td class="v">1.0.18 </td></tr>
</table>
<h2><a name="module_spl" href="#module_spl">SPL</a></h2>
<table>
<tr><td class="e">SPL support </td><td class="v">enabled </td></tr>
<tr><td class="e">Interfaces </td><td class="v">OuterIterator, RecursiveIterator, SeekableIterator, SplObserver, SplSubject </td></tr>
<tr><td class="e">Classes </td><td class="v">AppendIterator, ArrayIterator, ArrayObject, BadFunctionCallException, BadMethodCallException, CachingIterator, CallbackFilterIterator, DirectoryIterator, DomainException, EmptyIterator, FilesystemIterator, FilterIterator, GlobIterator, InfiniteIterator, InvalidArgumentException, IteratorIterator, LengthException, LimitIterator, LogicException, MultipleIterator, NoRewindIterator, OutOfBoundsException, OutOfRangeException, OverflowException, ParentIterator, RangeException, RecursiveArrayIterator, RecursiveCachingIterator, RecursiveCallbackFilterIterator, RecursiveDirectoryIterator, RecursiveFilterIterator, RecursiveIteratorIterator, RecursiveRegexIterator, RecursiveTreeIterator, RegexIterator, RuntimeException, SplDoublyLinkedList, SplFileInfo, SplFileObject, SplFixedArray, SplHeap, SplMinHeap, SplMaxHeap, SplObjectStorage, SplPriorityQueue, SplQueue, SplStack, SplTempFileObject, UnderflowException, UnexpectedValueException </td></tr>
</table>
<h2><a name="module_sqlite3" href="#module_sqlite3">sqlite3</a></h2>
<table>
<tr><td class="e">SQLite3 support </td><td class="v">enabled </td></tr>
<tr><td class="e">SQLite Library </td><td class="v">3.37.2 </td></tr>
</table>
<table>
<tr class="h"><th>Directive</th><th>Local Value</th><th>Master Value</th></tr>
<tr><td class="e">sqlite3.defensive</td><td class="v">On</td><td class="v">On</td></tr>
<tr><td class="e">sqlite3.extension_dir</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
</table>
<h2><a name="module_standard" href="#module_standard">standard</a></h2>
<table>
<tr><td class="e">Dynamic Library Support </td><td class="v">enabled </td></tr>
<tr><td class="e">Path to sendmail </td><td class="v">/usr/sbin/sendmail -t -i </td></tr>
</table>
<table>
<tr class="h"><th>Directive</th><th>Local Value</th><th>Master Value</th></tr>
<tr><td class="e">assert.active</td><td class="v">On</td><td class="v">On</td></tr>
<tr><td class="e">assert.bail</td><td class="v">Off</td><td class="v">Off</td></tr>
<tr><td class="e">assert.callback</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">assert.exception</td><td class="v">On</td><td class="v">On</td></tr>
<tr><td class="e">assert.warning</td><td class="v">On</td><td class="v">On</td></tr>
<tr><td class="e">auto_detect_line_endings</td><td class="v">Off</td><td class="v">Off</td></tr>
<tr><td class="e">default_socket_timeout</td><td class="v">60</td><td class="v">60</td></tr>
<tr><td class="e">from</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">session.trans_sid_hosts</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">session.trans_sid_tags</td><td class="v">a=href,area=href,frame=src,form=</td><td class="v">a=href,area=href,frame=src,form=</td></tr>
<tr><td class="e">unserialize_max_depth</td><td class="v">4096</td><td class="v">4096</td></tr>
<tr><td class="e">url_rewriter.hosts</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">url_rewriter.tags</td><td class="v">form=</td><td class="v">form=</td></tr>
<tr><td class="e">user_agent</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
</table>
<h2><a name="module_sysvmsg" href="#module_sysvmsg">sysvmsg</a></h2>
<table>
<tr><td class="e">sysvmsg support </td><td class="v">enabled </td></tr>
</table>
<h2><a name="module_sysvsem" href="#module_sysvsem">sysvsem</a></h2>
<table>
<tr><td class="e">sysvsem support </td><td class="v">enabled </td></tr>
</table>
<h2><a name="module_sysvshm" href="#module_sysvshm">sysvshm</a></h2>
<table>
<tr><td class="e">sysvshm support </td><td class="v">enabled </td></tr>
</table>
<h2><a name="module_tokenizer" href="#module_tokenizer">tokenizer</a></h2>
<table>
<tr><td class="e">Tokenizer Support </td><td class="v">enabled </td></tr>
</table>
<h2><a name="module_xml" href="#module_xml">xml</a></h2>
<table>
<tr><td class="e">XML Support </td><td class="v">active </td></tr>
<tr><td class="e">XML Namespace Support </td><td class="v">active </td></tr>
<tr><td class="e">libxml2 Version </td><td class="v">2.9.13 </td></tr>
</table>
<h2><a name="module_xmlreader" href="#module_xmlreader">xmlreader</a></h2>
<table>
<tr><td class="e">XMLReader </td><td class="v">enabled </td></tr>
</table>
<h2><a name="module_xmlwriter" href="#module_xmlwriter">xmlwriter</a></h2>
<table>
<tr><td class="e">XMLWriter </td><td class="v">enabled </td></tr>
</table>
<h2><a name="module_xsl" href="#module_xsl">xsl</a></h2>
<table>
<tr><td class="e">XSL </td><td class="v">enabled </td></tr>
<tr><td class="e">libxslt Version </td><td class="v">1.1.34 </td></tr>
<tr><td class="e">libxslt compiled against libxml Version </td><td class="v">2.9.13 </td></tr>
<tr><td class="e">EXSLT </td><td class="v">enabled </td></tr>
<tr><td class="e">libexslt Version </td><td class="v">1.1.34 </td></tr>
</table>
<h2><a name="module_zend+opcache" href="#module_zend+opcache">Zend OPcache</a></h2>
<table>
<tr><td class="e">Opcode Caching </td><td class="v">Up and Running </td></tr>
<tr><td class="e">Optimization </td><td class="v">Enabled </td></tr>
<tr><td class="e">SHM Cache </td><td class="v">Enabled </td></tr>
<tr><td class="e">File Cache </td><td class="v">Disabled </td></tr>
<tr><td class="e">JIT </td><td class="v">Disabled </td></tr>
<tr><td class="e">Startup </td><td class="v">OK </td></tr>
<tr><td class="e">Shared memory model </td><td class="v">mmap </td></tr>
<tr><td class="e">Cache hits </td><td class="v">18182 </td></tr>
<tr><td class="e">Cache misses </td><td class="v">811 </td></tr>
<tr><td class="e">Used memory </td><td class="v">91503280 </td></tr>
<tr><td class="e">Free memory </td><td class="v">704663960 </td></tr>
<tr><td class="e">Wasted memory </td><td class="v">9139128 </td></tr>
<tr><td class="e">Interned Strings Used memory </td><td class="v">6817168 </td></tr>
<tr><td class="e">Interned Strings Free memory </td><td class="v">1571440 </td></tr>
<tr><td class="e">Cached scripts </td><td class="v">778 </td></tr>
<tr><td class="e">Cached keys </td><td class="v">778 </td></tr>
<tr><td class="e">Max keys </td><td class="v">1048793 </td></tr>
<tr><td class="e">OOM restarts </td><td class="v">0 </td></tr>
<tr><td class="e">Hash keys restarts </td><td class="v">0 </td></tr>
<tr><td class="e">Manual restarts </td><td class="v">0 </td></tr>
<tr><td class="e">Start time </td><td class="v">2024-04-05T20:54:23+0000 </td></tr>
<tr><td class="e">Last restart time </td><td class="v">none </td></tr>
<tr><td class="e">Last force restart time </td><td class="v">none </td></tr>
</table>
<table>
<tr class="h"><th>Directive</th><th>Local Value</th><th>Master Value</th></tr>
<tr><td class="e">opcache.blacklist_filename</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">opcache.dups_fix</td><td class="v">Off</td><td class="v">Off</td></tr>
<tr><td class="e">opcache.enable</td><td class="v">On</td><td class="v">On</td></tr>
<tr><td class="e">opcache.enable_cli</td><td class="v">On</td><td class="v">On</td></tr>
<tr><td class="e">opcache.enable_file_override</td><td class="v">Off</td><td class="v">Off</td></tr>
<tr><td class="e">opcache.error_log</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">opcache.file_cache</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">opcache.file_cache_consistency_checks</td><td class="v">On</td><td class="v">On</td></tr>
<tr><td class="e">opcache.file_cache_only</td><td class="v">Off</td><td class="v">Off</td></tr>
<tr><td class="e">opcache.file_update_protection</td><td class="v">2</td><td class="v">2</td></tr>
<tr><td class="e">opcache.force_restart_timeout</td><td class="v">180</td><td class="v">180</td></tr>
<tr><td class="e">opcache.huge_code_pages</td><td class="v">Off</td><td class="v">Off</td></tr>
<tr><td class="e">opcache.interned_strings_buffer</td><td class="v">8</td><td class="v">8</td></tr>
<tr><td class="e">opcache.jit</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">opcache.jit_bisect_limit</td><td class="v">0</td><td class="v">0</td></tr>
<tr><td class="e">opcache.jit_blacklist_root_trace</td><td class="v">16</td><td class="v">16</td></tr>
<tr><td class="e">opcache.jit_blacklist_side_trace</td><td class="v">8</td><td class="v">8</td></tr>
<tr><td class="e">opcache.jit_buffer_size</td><td class="v">0</td><td class="v">0</td></tr>
<tr><td class="e">opcache.jit_debug</td><td class="v">0</td><td class="v">0</td></tr>
<tr><td class="e">opcache.jit_hot_func</td><td class="v">127</td><td class="v">127</td></tr>
<tr><td class="e">opcache.jit_hot_loop</td><td class="v">64</td><td class="v">64</td></tr>
<tr><td class="e">opcache.jit_hot_return</td><td class="v">8</td><td class="v">8</td></tr>
<tr><td class="e">opcache.jit_hot_side_exit</td><td class="v">8</td><td class="v">8</td></tr>
<tr><td class="e">opcache.jit_max_exit_counters</td><td class="v">8192</td><td class="v">8192</td></tr>
<tr><td class="e">opcache.jit_max_loop_unrolls</td><td class="v">8</td><td class="v">8</td></tr>
<tr><td class="e">opcache.jit_max_polymorphic_calls</td><td class="v">2</td><td class="v">2</td></tr>
<tr><td class="e">opcache.jit_max_recursive_calls</td><td class="v">2</td><td class="v">2</td></tr>
<tr><td class="e">opcache.jit_max_recursive_returns</td><td class="v">2</td><td class="v">2</td></tr>
<tr><td class="e">opcache.jit_max_root_traces</td><td class="v">1024</td><td class="v">1024</td></tr>
<tr><td class="e">opcache.jit_max_side_traces</td><td class="v">128</td><td class="v">128</td></tr>
<tr><td class="e">opcache.jit_max_trace_length</td><td class="v">1024</td><td class="v">1024</td></tr>
<tr><td class="e">opcache.jit_prof_threshold</td><td class="v">0.005</td><td class="v">0.005</td></tr>
<tr><td class="e">opcache.lockfile_path</td><td class="v">/tmp</td><td class="v">/tmp</td></tr>
<tr><td class="e">opcache.log_verbosity_level</td><td class="v">1</td><td class="v">1</td></tr>
<tr><td class="e">opcache.max_accelerated_files</td><td class="v">1000000</td><td class="v">1000000</td></tr>
<tr><td class="e">opcache.max_file_size</td><td class="v">0</td><td class="v">0</td></tr>
<tr><td class="e">opcache.max_wasted_percentage</td><td class="v">5</td><td class="v">5</td></tr>
<tr><td class="e">opcache.memory_consumption</td><td class="v">768</td><td class="v">768</td></tr>
<tr><td class="e">opcache.opt_debug_level</td><td class="v">0</td><td class="v">0</td></tr>
<tr><td class="e">opcache.optimization_level</td><td class="v">0x7FFEBFFF</td><td class="v">0x7FFEBFFF</td></tr>
<tr><td class="e">opcache.preferred_memory_model</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">opcache.preload</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">opcache.preload_user</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">opcache.protect_memory</td><td class="v">Off</td><td class="v">Off</td></tr>
<tr><td class="e">opcache.record_warnings</td><td class="v">Off</td><td class="v">Off</td></tr>
<tr><td class="e">opcache.restrict_api</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">opcache.revalidate_freq</td><td class="v">2</td><td class="v">2</td></tr>
<tr><td class="e">opcache.revalidate_path</td><td class="v">On</td><td class="v">On</td></tr>
<tr><td class="e">opcache.save_comments</td><td class="v">On</td><td class="v">On</td></tr>
<tr><td class="e">opcache.use_cwd</td><td class="v">On</td><td class="v">On</td></tr>
<tr><td class="e">opcache.validate_permission</td><td class="v">Off</td><td class="v">Off</td></tr>
<tr><td class="e">opcache.validate_root</td><td class="v">Off</td><td class="v">Off</td></tr>
<tr><td class="e">opcache.validate_timestamps</td><td class="v">On</td><td class="v">On</td></tr>
</table>
<h2><a name="module_zip" href="#module_zip">zip</a></h2>
<table>
<tr><td class="e">Zip </td><td class="v">enabled </td></tr>
<tr><td class="e">Zip version </td><td class="v">1.22.3 </td></tr>
<tr><td class="e">Libzip version </td><td class="v">1.7.3 </td></tr>
<tr><td class="e">BZIP2 compression </td><td class="v">Yes </td></tr>
<tr><td class="e">XZ compression </td><td class="v">No </td></tr>
<tr><td class="e">ZSTD compression </td><td class="v">No </td></tr>
<tr><td class="e">AES-128 encryption </td><td class="v">Yes </td></tr>
<tr><td class="e">AES-192 encryption </td><td class="v">Yes </td></tr>
<tr><td class="e">AES-256 encryption </td><td class="v">Yes </td></tr>
</table>
<h2><a name="module_zlib" href="#module_zlib">zlib</a></h2>
<table>
<tr><td class="e">ZLib Support </td><td class="v">enabled </td></tr>
<tr><td class="e">Stream Wrapper </td><td class="v">compress.zlib:// </td></tr>
<tr><td class="e">Stream Filter </td><td class="v">zlib.inflate, zlib.deflate </td></tr>
<tr><td class="e">Compiled Version </td><td class="v">1.2.11 </td></tr>
<tr><td class="e">Linked Version </td><td class="v">1.2.11 </td></tr>
</table>
<table>
<tr class="h"><th>Directive</th><th>Local Value</th><th>Master Value</th></tr>
<tr><td class="e">zlib.output_compression</td><td class="v">Off</td><td class="v">Off</td></tr>
<tr><td class="e">zlib.output_compression_level</td><td class="v">-1</td><td class="v">-1</td></tr>
<tr><td class="e">zlib.output_handler</td><td class="v"><i>no value</i></td><td class="v"><i>no value</i></td></tr>
</table>
<h2>Additional Modules</h2>
<table>
<tr class="h"><th>Module Name</th></tr>
</table>
<h2>Environment</h2>
<table>
<tr class="h"><th>Variable</th><th>Value</th></tr>
<tr><td class="e">USER </td><td class="v">antsftp </td></tr>
<tr><td class="e">HOME </td><td class="v">/home/antsftp </td></tr>
</table>
<h2>PHP Variables</h2>
<table>
<tr class="h"><th>Variable</th><th>Value</th></tr>
<tr><td class="e">$_SERVER['USER']</td><td class="v">antsftp</td></tr>
<tr><td class="e">$_SERVER['HOME']</td><td class="v">/home/antsftp</td></tr>
<tr><td class="e">$_SERVER['HTTP_ACCEPT_ENCODING']</td><td class="v">identity</td></tr>
<tr><td class="e">$_SERVER['HTTP_ACCEPT']</td><td class="v">*/*</td></tr>
<tr><td class="e">$_SERVER['HTTP_USER_AGENT']</td><td class="v">Wget/1.21.3</td></tr>
<tr><td class="e">$_SERVER['HTTP_CONNECTION']</td><td class="v">close</td></tr>
<tr><td class="e">$_SERVER['HTTP_X_FORWARDED_FOR']</td><td class="v">158.174.144.53</td></tr>
<tr><td class="e">$_SERVER['HTTP_X_REAL_IP']</td><td class="v">158.174.144.53</td></tr>
<tr><td class="e">$_SERVER['HTTP_X_FORWARDED_HOST']</td><td class="v">ants.ftp.sh</td></tr>
<tr><td class="e">$_SERVER['HTTP_HOST']</td><td class="v">ants.ftp.sh</td></tr>
<tr><td class="e">$_SERVER['PHP_VALUE']</td><td class="v">
error_log=/home/antsftp/logs/php/error.log;
memory_limit=5G;
max_execution_time=3600;
max_input_time=3600;
max_input_vars=100000;
post_max_size=5G;
upload_max_filesize=5G;</td></tr>
<tr><td class="e">$_SERVER['HTTPS']</td><td class="v">on</td></tr>
<tr><td class="e">$_SERVER['MGT']</td><td class="v">1</td></tr>
<tr><td class="e">$_SERVER['GEOIP_LONGITUDE']</td><td class="v">-0.1300</td></tr>
<tr><td class="e">$_SERVER['GEOIP_LATITUDE']</td><td class="v">51.5000</td></tr>
<tr><td class="e">$_SERVER['GEOIP_CITY_CONTINENT_CODE']</td><td class="v">EU</td></tr>
<tr><td class="e">$_SERVER['GEOIP_POSTAL_CODE']</td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">$_SERVER['GEOIP_CITY']</td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">$_SERVER['GEOIP_REGION']</td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">$_SERVER['GEOIP_CITY_COUNTRY_NAME']</td><td class="v">United Kingdom</td></tr>
<tr><td class="e">$_SERVER['GEOIP_CITY_COUNTRY_CODE3']</td><td class="v">GBR</td></tr>
<tr><td class="e">$_SERVER['GEOIP_CITY_COUNTRY_CODE']</td><td class="v">GB</td></tr>
<tr><td class="e">$_SERVER['GEOIP_COUNTRY_NAME']</td><td class="v">United Kingdom</td></tr>
<tr><td class="e">$_SERVER['GEOIP_COUNTRY_CODE3']</td><td class="v">GBR</td></tr>
<tr><td class="e">$_SERVER['GEOIP_COUNTRY_CODE']</td><td class="v">GB</td></tr>
<tr><td class="e">$_SERVER['REDIRECT_STATUS']</td><td class="v">200</td></tr>
<tr><td class="e">$_SERVER['SERVER_NAME']</td><td class="v">ants.ftp.sh</td></tr>
<tr><td class="e">$_SERVER['SERVER_PORT']</td><td class="v">443</td></tr>
<tr><td class="e">$_SERVER['SERVER_ADDR']</td><td class="v">127.0.0.1</td></tr>
<tr><td class="e">$_SERVER['REMOTE_PORT']</td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">$_SERVER['REMOTE_ADDR']</td><td class="v">158.174.144.53</td></tr>
<tr><td class="e">$_SERVER['SERVER_SOFTWARE']</td><td class="v">nginx/1.21.4</td></tr>
<tr><td class="e">$_SERVER['GATEWAY_INTERFACE']</td><td class="v">CGI/1.1</td></tr>
<tr><td class="e">$_SERVER['SERVER_PROTOCOL']</td><td class="v">HTTP/1.0</td></tr>
<tr><td class="e">$_SERVER['DOCUMENT_ROOT']</td><td class="v">/home/antsftp/htdocs/www</td></tr>
<tr><td class="e">$_SERVER['DOCUMENT_URI']</td><td class="v">/mm/index.php</td></tr>
<tr><td class="e">$_SERVER['REQUEST_URI']</td><td class="v">/mm/</td></tr>
<tr><td class="e">$_SERVER['SCRIPT_NAME']</td><td class="v">/mm/index.php</td></tr>
<tr><td class="e">$_SERVER['SCRIPT_FILENAME']</td><td class="v">/home/antsftp/htdocs/www/mm/index.php</td></tr>
<tr><td class="e">$_SERVER['CONTENT_LENGTH']</td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">$_SERVER['CONTENT_TYPE']</td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">$_SERVER['REQUEST_METHOD']</td><td class="v">GET</td></tr>
<tr><td class="e">$_SERVER['QUERY_STRING']</td><td class="v"><i>no value</i></td></tr>
<tr><td class="e">$_SERVER['FCGI_ROLE']</td><td class="v">RESPONDER</td></tr>
<tr><td class="e">$_SERVER['PHP_SELF']</td><td class="v">/mm/index.php</td></tr>
<tr><td class="e">$_SERVER['REQUEST_TIME_FLOAT']</td><td class="v">1712359258.137</td></tr>
<tr><td class="e">$_SERVER['REQUEST_TIME']</td><td class="v">1712359258</td></tr>
</table>
<hr />
<h1>PHP Credits</h1>
<table>
<tr class="h"><th>PHP Group</th></tr>
<tr><td class="e">Thies C. Arntzen, Stig Bakken, Shane Caraveo, Andi Gutmans, Rasmus Lerdorf, Sam Ruby, Sascha Schumann, Zeev Suraski, Jim Winstead, Andrei Zmievski </td></tr>
</table>
<table>
<tr class="h"><th>Language Design &amp; Concept</th></tr>
<tr><td class="e">Andi Gutmans, Rasmus Lerdorf, Zeev Suraski, Marcus Boerger </td></tr>
</table>
<table>
<tr class="h"><th colspan="2">PHP Authors</th></tr>
<tr class="h"><th>Contribution</th><th>Authors</th></tr>
<tr><td class="e">Zend Scripting Language Engine </td><td class="v">Andi Gutmans, Zeev Suraski, Stanislav Malyshev, Marcus Boerger, Dmitry Stogov, Xinchen Hui, Nikita Popov </td></tr>
<tr><td class="e">Extension Module API </td><td class="v">Andi Gutmans, Zeev Suraski, Andrei Zmievski </td></tr>
<tr><td class="e">UNIX Build and Modularization </td><td class="v">Stig Bakken, Sascha Schumann, Jani Taskinen, Peter Kokot </td></tr>
<tr><td class="e">Windows Support </td><td class="v">Shane Caraveo, Zeev Suraski, Wez Furlong, Pierre-Alain Joye, Anatol Belski, Kalle Sommer Nielsen </td></tr>
<tr><td class="e">Server API (SAPI) Abstraction Layer </td><td class="v">Andi Gutmans, Shane Caraveo, Zeev Suraski </td></tr>
<tr><td class="e">Streams Abstraction Layer </td><td class="v">Wez Furlong, Sara Golemon </td></tr>
<tr><td class="e">PHP Data Objects Layer </td><td class="v">Wez Furlong, Marcus Boerger, Sterling Hughes, George Schlossnagle, Ilia Alshanetsky </td></tr>
<tr><td class="e">Output Handler </td><td class="v">Zeev Suraski, Thies C. Arntzen, Marcus Boerger, Michael Wallner </td></tr>
<tr><td class="e">Consistent 64 bit support </td><td class="v">Anthony Ferrara, Anatol Belski </td></tr>
</table>
<table>
<tr class="h"><th colspan="2">SAPI Modules</th></tr>
<tr class="h"><th>Contribution</th><th>Authors</th></tr>
<tr><td class="e">Apache 2.0 Handler </td><td class="v">Ian Holsman, Justin Erenkrantz (based on Apache 2.0 Filter code) </td></tr>
<tr><td class="e">CGI / FastCGI </td><td class="v">Rasmus Lerdorf, Stig Bakken, Shane Caraveo, Dmitry Stogov </td></tr>
<tr><td class="e">CLI </td><td class="v">Edin Kadribasic, Marcus Boerger, Johannes Schlueter, Moriyoshi Koizumi, Xinchen Hui </td></tr>
<tr><td class="e">Embed </td><td class="v">Edin Kadribasic </td></tr>
<tr><td class="e">FastCGI Process Manager </td><td class="v">Andrei Nigmatulin, dreamcat4, Antony Dovgal, Jerome Loyet </td></tr>
<tr><td class="e">litespeed </td><td class="v">George Wang </td></tr>
<tr><td class="e">phpdbg </td><td class="v">Felipe Pena, Joe Watkins, Bob Weinand </td></tr>
</table>
<table>
<tr class="h"><th colspan="2">Module Authors</th></tr>
<tr class="h"><th>Module</th><th>Authors</th></tr>
<tr><td class="e">BC Math </td><td class="v">Andi Gutmans </td></tr>
<tr><td class="e">Bzip2 </td><td class="v">Sterling Hughes </td></tr>
<tr><td class="e">Calendar </td><td class="v">Shane Caraveo, Colin Viebrock, Hartmut Holzgraefe, Wez Furlong </td></tr>
<tr><td class="e">COM and .Net </td><td class="v">Wez Furlong </td></tr>
<tr><td class="e">ctype </td><td class="v">Hartmut Holzgraefe </td></tr>
<tr><td class="e">cURL </td><td class="v">Sterling Hughes </td></tr>
<tr><td class="e">Date/Time Support </td><td class="v">Derick Rethans </td></tr>
<tr><td class="e">DB-LIB (MS SQL, Sybase) </td><td class="v">Wez Furlong, Frank M. Kromann, Adam Baratz </td></tr>
<tr><td class="e">DBA </td><td class="v">Sascha Schumann, Marcus Boerger </td></tr>
<tr><td class="e">DOM </td><td class="v">Christian Stocker, Rob Richards, Marcus Boerger </td></tr>
<tr><td class="e">enchant </td><td class="v">Pierre-Alain Joye, Ilia Alshanetsky </td></tr>
<tr><td class="e">EXIF </td><td class="v">Rasmus Lerdorf, Marcus Boerger </td></tr>
<tr><td class="e">FFI </td><td class="v">Dmitry Stogov </td></tr>
<tr><td class="e">fileinfo </td><td class="v">Ilia Alshanetsky, Pierre Alain Joye, Scott MacVicar, Derick Rethans, Anatol Belski </td></tr>
<tr><td class="e">Firebird driver for PDO </td><td class="v">Ard Biesheuvel </td></tr>
<tr><td class="e">FTP </td><td class="v">Stefan Esser, Andrew Skalski </td></tr>
<tr><td class="e">GD imaging </td><td class="v">Rasmus Lerdorf, Stig Bakken, Jim Winstead, Jouni Ahto, Ilia Alshanetsky, Pierre-Alain Joye, Marcus Boerger, Mark Randall </td></tr>
<tr><td class="e">GetText </td><td class="v">Alex Plotnick </td></tr>
<tr><td class="e">GNU GMP support </td><td class="v">Stanislav Malyshev </td></tr>
<tr><td class="e">Iconv </td><td class="v">Rui Hirokawa, Stig Bakken, Moriyoshi Koizumi </td></tr>
<tr><td class="e">IMAP </td><td class="v">Rex Logan, Mark Musone, Brian Wang, Kaj-Michael Lang, Antoni Pamies Olive, Rasmus Lerdorf, Andrew Skalski, Chuck Hagenbuch, Daniel R Kalowsky </td></tr>
<tr><td class="e">Input Filter </td><td class="v">Rasmus Lerdorf, Derick Rethans, Pierre-Alain Joye, Ilia Alshanetsky </td></tr>
<tr><td class="e">Internationalization </td><td class="v">Ed Batutis, Vladimir Iordanov, Dmitry Lakhtyuk, Stanislav Malyshev, Vadim Savchuk, Kirti Velankar </td></tr>
<tr><td class="e">JSON </td><td class="v">Jakub Zelenka, Omar Kilani, Scott MacVicar </td></tr>
<tr><td class="e">LDAP </td><td class="v">Amitay Isaacs, Eric Warnke, Rasmus Lerdorf, Gerrit Thomson, Stig Venaas </td></tr>
<tr><td class="e">LIBXML </td><td class="v">Christian Stocker, Rob Richards, Marcus Boerger, Wez Furlong, Shane Caraveo </td></tr>
<tr><td class="e">Multibyte String Functions </td><td class="v">Tsukada Takuya, Rui Hirokawa </td></tr>
<tr><td class="e">MySQL driver for PDO </td><td class="v">George Schlossnagle, Wez Furlong, Ilia Alshanetsky, Johannes Schlueter </td></tr>
<tr><td class="e">MySQLi </td><td class="v">Zak Greant, Georg Richter, Andrey Hristov, Ulf Wendel </td></tr>
<tr><td class="e">MySQLnd </td><td class="v">Andrey Hristov, Ulf Wendel, Georg Richter, Johannes Schlüter </td></tr>
<tr><td class="e">OCI8 </td><td class="v">Stig Bakken, Thies C. Arntzen, Andy Sautins, David Benson, Maxim Maletsky, Harald Radi, Antony Dovgal, Andi Gutmans, Wez Furlong, Christopher Jones, Oracle Corporation </td></tr>
<tr><td class="e">ODBC driver for PDO </td><td class="v">Wez Furlong </td></tr>
<tr><td class="e">ODBC </td><td class="v">Stig Bakken, Andreas Karajannis, Frank M. Kromann, Daniel R. Kalowsky </td></tr>
<tr><td class="e">Opcache </td><td class="v">Andi Gutmans, Zeev Suraski, Stanislav Malyshev, Dmitry Stogov, Xinchen Hui </td></tr>
<tr><td class="e">OpenSSL </td><td class="v">Stig Venaas, Wez Furlong, Sascha Kettler, Scott MacVicar, Eliot Lear </td></tr>
<tr><td class="e">Oracle (OCI) driver for PDO </td><td class="v">Wez Furlong </td></tr>
<tr><td class="e">pcntl </td><td class="v">Jason Greene, Arnaud Le Blanc </td></tr>
<tr><td class="e">Perl Compatible Regexps </td><td class="v">Andrei Zmievski </td></tr>
<tr><td class="e">PHP Archive </td><td class="v">Gregory Beaver, Marcus Boerger </td></tr>
<tr><td class="e">PHP Data Objects </td><td class="v">Wez Furlong, Marcus Boerger, Sterling Hughes, George Schlossnagle, Ilia Alshanetsky </td></tr>
<tr><td class="e">PHP hash </td><td class="v">Sara Golemon, Rasmus Lerdorf, Stefan Esser, Michael Wallner, Scott MacVicar </td></tr>
<tr><td class="e">Posix </td><td class="v">Kristian Koehntopp </td></tr>
<tr><td class="e">PostgreSQL driver for PDO </td><td class="v">Edin Kadribasic, Ilia Alshanetsky </td></tr>
<tr><td class="e">PostgreSQL </td><td class="v">Jouni Ahto, Zeev Suraski, Yasuo Ohgaki, Chris Kings-Lynne </td></tr>
<tr><td class="e">Pspell </td><td class="v">Vlad Krupin </td></tr>
<tr><td class="e">random </td><td class="v">Go Kudo, Tim Düsterhus, Guilliam Xavier, Christoph M. Becker, Jakub Zelenka, Bob Weinand, Máté Kocsis, and Original RNG implementators </td></tr>
<tr><td class="e">Readline </td><td class="v">Thies C. Arntzen </td></tr>
<tr><td class="e">Reflection </td><td class="v">Marcus Boerger, Timm Friebe, George Schlossnagle, Andrei Zmievski, Johannes Schlueter </td></tr>
<tr><td class="e">Sessions </td><td class="v">Sascha Schumann, Andrei Zmievski </td></tr>
<tr><td class="e">Shared Memory Operations </td><td class="v">Slava Poliakov, Ilia Alshanetsky </td></tr>
<tr><td class="e">SimpleXML </td><td class="v">Sterling Hughes, Marcus Boerger, Rob Richards </td></tr>
<tr><td class="e">SNMP </td><td class="v">Rasmus Lerdorf, Harrie Hazewinkel, Mike Jackson, Steven Lawrance, Johann Hanne, Boris Lytochkin </td></tr>
<tr><td class="e">SOAP </td><td class="v">Brad Lafountain, Shane Caraveo, Dmitry Stogov </td></tr>
<tr><td class="e">Sockets </td><td class="v">Chris Vandomelen, Sterling Hughes, Daniel Beulshausen, Jason Greene </td></tr>
<tr><td class="e">Sodium </td><td class="v">Frank Denis </td></tr>
<tr><td class="e">SPL </td><td class="v">Marcus Boerger, Etienne Kneuss </td></tr>
<tr><td class="e">SQLite 3.x driver for PDO </td><td class="v">Wez Furlong </td></tr>
<tr><td class="e">SQLite3 </td><td class="v">Scott MacVicar, Ilia Alshanetsky, Brad Dewar </td></tr>
<tr><td class="e">System V Message based IPC </td><td class="v">Wez Furlong </td></tr>
<tr><td class="e">System V Semaphores </td><td class="v">Tom May </td></tr>
<tr><td class="e">System V Shared Memory </td><td class="v">Christian Cartus </td></tr>
<tr><td class="e">tidy </td><td class="v">John Coggeshall, Ilia Alshanetsky </td></tr>
<tr><td class="e">tokenizer </td><td class="v">Andrei Zmievski, Johannes Schlueter </td></tr>
<tr><td class="e">XML </td><td class="v">Stig Bakken, Thies C. Arntzen, Sterling Hughes </td></tr>
<tr><td class="e">XMLReader </td><td class="v">Rob Richards </td></tr>
<tr><td class="e">XMLWriter </td><td class="v">Rob Richards, Pierre-Alain Joye </td></tr>
<tr><td class="e">XSL </td><td class="v">Christian Stocker, Rob Richards </td></tr>
<tr><td class="e">Zip </td><td class="v">Pierre-Alain Joye, Remi Collet </td></tr>
<tr><td class="e">Zlib </td><td class="v">Rasmus Lerdorf, Stefan Roehrich, Zeev Suraski, Jade Nicoletti, Michael Wallner </td></tr>
</table>
<table>
<tr class="h"><th colspan="2">PHP Documentation</th></tr>
<tr><td class="e">Authors </td><td class="v">Mehdi Achour, Friedhelm Betz, Antony Dovgal, Nuno Lopes, Hannes Magnusson, Philip Olson, Georg Richter, Damien Seguy, Jakub Vrana, Adam Harvey </td></tr>
<tr><td class="e">Editor </td><td class="v">Peter Cowburn </td></tr>
<tr><td class="e">User Note Maintainers </td><td class="v">Daniel P. Brown, Thiago Henrique Pojda </td></tr>
<tr><td class="e">Other Contributors </td><td class="v">Previously active authors, editors and other contributors are listed in the manual. </td></tr>
</table>
<table>
<tr class="h"><th>PHP Quality Assurance Team</th></tr>
<tr><td class="e">Ilia Alshanetsky, Joerg Behrens, Antony Dovgal, Stefan Esser, Moriyoshi Koizumi, Magnus Maatta, Sebastian Nohn, Derick Rethans, Melvyn Sopacua, Pierre-Alain Joye, Dmitry Stogov, Felipe Pena, David Soria Parra, Stanislav Malyshev, Julien Pauli, Stephen Zarkos, Anatol Belski, Remi Collet, Ferenc Kovacs </td></tr>
</table>
<table>
<tr class="h"><th colspan="2">Websites and Infrastructure team</th></tr>
<tr><td class="e">PHP Websites Team </td><td class="v">Rasmus Lerdorf, Hannes Magnusson, Philip Olson, Lukas Kahwe Smith, Pierre-Alain Joye, Kalle Sommer Nielsen, Peter Cowburn, Adam Harvey, Ferenc Kovacs, Levi Morrison </td></tr>
<tr><td class="e">Event Maintainers </td><td class="v">Damien Seguy, Daniel P. Brown </td></tr>
<tr><td class="e">Network Infrastructure </td><td class="v">Daniel P. Brown </td></tr>
<tr><td class="e">Windows Infrastructure </td><td class="v">Alex Schoenmaker </td></tr>
</table>
<table>
<tr class="h"><th colspan="1">Debian Packaging</th></tr>
<tr><td class="e"><a href="https://deb.sury.org">DEB.SURY.ORG</a>, an Ondřej Surý project</td></tr>
</table>
<h2>PHP License</h2>
<table>
<tr class="v"><td>
<p>
This program is free software; you can redistribute it and/or modify it under the terms of the PHP License as published by the PHP Group and included in the distribution in the file:  LICENSE
</p>
<p>This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
</p>
<p>If you did not receive a copy of the PHP license, or have any questions about PHP licensing, please contact license@php.net.
</p>
</td></tr>
</table>
</div></div>
</div>
<input id="menu-hack" />
</label>
</div>
<script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script><script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script></body>
</html>
