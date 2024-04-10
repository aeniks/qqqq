#!/bin/bash 
sudo apt -y install git python3.10-venv python3-pip 2>/dev/null;
read -ep  "gh folder: " -i "$PWD" "gh"; export gh=$gh; cd $gh; rm cloudflare-ddns; 
git clone https://github.com/timothymiller/cloudflare-ddns.git;
cd cloudflare-ddns;
wget -O config.json.gpg https://github.com/aeniks/ants/raw/main/sh/cloudflare_dns.json.gpg
gpg -o config.json -d config.json.gpg; chmod +x ./config.json; chmod +x ./start-sync.sh;
echo "#!/bin/bash 
bash $gh/cloudflare_dns/start-sync.sh" > "cfip.sh"; sudo chown $SUDO_USER:$USER cfip.sh; sudo chmod 775 cfip.sh;
sudo cp cfip.sh	/etc/cron.hourly/cloudflare_ip.sh;
echo "
\n\t CONFIG-FILE in $cyan$gh/config.json$re \n
CRON FILE in $cyan /etc/cron.hourly/cloudflare_ip.sh $re \n;
";