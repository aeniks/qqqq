


###################################
#### Install or update the web-server? [Y/n] 
###################################
####
echo ${dim}${green};echo "${c75}";echo "${c75}";echo "${c75}";echo "${c75}";echo "${c75}";echo "${c75}";echo "${c75}";
tput cuu 4;
read -p ${cyan}"  ----------${re} Install or update AMP-web-server? [Y/n]   ${left2}" yn;
tput cuf 52 cuu 1;
if [ "$yn" != "${yn#[Nn]}" ];
then 
#DONT
echo "${re} nope ";echo;echo;echo;echo;sleep 2;
else
#### DO
echo "${re} OK "; echo;echo;
echo "${dim} Hold on ${bold}updating... ${re}"
apt update -qq > out.log 2>/dev/null;
echo "${dim} Hold on ${bold}installing... ${re}"
echo ${dim} "${dim}" ${noso};echo;echo;echo;echo;
#### UPDATES SILENTLY ##################
apt install -qq -y apache2 ghostscript libapache2-mod-php curl lynx mariadb-server tar ;
apt install -qq -y php php-gd php-memcache php-soap php-tidy php-cli php-bcmath php-curl
apt install -qq -y php-imagick php-intl php-json php-mbstring php-mysql php-xml php-zip ;
clear
echo;echo "${bold}    AMP-web-server installed.";
echo;echo;echo;echo;

#################################################################################
########-SETUP-WORDPRESS-########################################################
#################################################################################
####
echo ${dim}${green};echo "${c75}";echo "${c75}";echo "${c75}";echo "${c75}";echo "${c75}";echo "${c75}";echo "${c75}";
tput cuu 4;
read -p ${cyan}"  ----------${re} Setup Wordpress-site? [Y/n]   ${left2}" yn;
tput cuf 52 cuu 1;
if [ "$yn" != "${yn#[Nn]}" ];
then 
#DONT
echo "${re} nope ";echo;echo;echo;echo;sleep 2;
else
#### DO
echo "${re} OK "; echo;echo;
#################################################################################
########-SET-URL-################################################################
#################################################################################
####
read -p "    ${pink}--${normal} ${blue}Base url: like: -- ${normal}myaddress.net -- ${blue}(leave as is if unsure):${white} " userurl ;
[ -z "${userurl}" ] && userurl="wordpress$(date +%d%m%y)";
echo "${userurl}";
########
read -p "    ${yellow}--${normal} ${blue}New directory: like: ${pink}--${normal} ${white}new-wp-site ${pink}--${normal} ${blue}(leave empty if unsure):${white} " userdir
install_dir="/var/www/${userurl}${userdir}"
read -p "    ${red}--${normal}  Change site directory? [y/N] " yn;
if [ "$yn" != "${yn#[Yy]}" ];
then echo "    ${pink}--${normal}  Yes - OK";
read -p "    ${blue}--${normal}  New directory? (default: $install_dir): " install_dir
install_dir="${install_dir}/${userurl}${userdir}"
echo "    ${pink}--${normal}  OK"
sleep 0.1; echo
else
echo;echo "    ${white}--${normal}  NO - OK";echo;
fi
#################################################################################
####-CREATE-WP-INSTALL-FOLDER-###################################################
#################################################################################
####
mv -n ${install_dir} ${install_dir}_backup 2>/dev/null; mkdir -p -m 0775 ${install_dir}; cd ${install_dir}; chown www-data: ./ -R;
#################################################################################
####-APACHE-SITE-ENABLE-#########################################################
#################################################################################
####
echo "
<VirtualHost *:80>
DocumentRoot ${install_dir}
ServerName ${userurl}
<Directory ${install_dir}>
Options FollowSymLinks
AllowOverride all
DirectoryIndex index.php index.htm
Require all granted
</Directory>
<Directory ${install_dir}/wp-content>
AllowOverride all
Options FollowSymLinks
Require all granted
</Directory>
</VirtualHost>

php_value memory_limit 230M
php_value post_max_size 2222M
php_value upload_max_filesize 2222M

<VirtualHost *:443>
ServerName ${userurl}
ServerAlias www.${userurl}
ServerAdmin hello@o${userurl}
DocumentRoot ${install_dir}
<Directory ${install_dir}>
Options FollowSymLinks
AllowOverride all
DirectoryIndex index.php index.htm
Require all granted
</Directory>
<Directory /var/www/${userurl}/wp-content>
AllowOverride all
Options FollowSymLinks
Require all granted
</Directory>
ErrorLog /${userurl}-error.log
CustomLog /${userurl}-access.log combined
SSLEngine On
SSLCertificateFile  /etc/webmin/miniserv.pem
</VirtualHost>

php_value memory_limit 260M
php_value post_max_size 2222M
php_value upload_max_filesize 2222M
" > /etc/apache2/sites-available/${userurl}.conf;

Install admin area?
mkdir -p ${install_dir}/backend
wget -O ${install_dir}/backend/index.htm https://github.com/12ants/startub/blob/8c0bb24a0c58efe6a2ace5eaf7fd07cd3e9edead/be.htm



echo 
a2ensite ${userurl}
a2dissite 000-default
a2enmod rewrite 
a2enmod headers
a2enmod ssl
service apache2 restart;
service mariadb restart;
db_name="wp`date +%N`";
sleep 0.2;echo ;
db_user="`date +%B%N`";
sleep 0.2;echo ;
db_password=`date|md5sum|cut -c 1-14`;
echo "
    ${green} ###################################### ${re}
    ${blue} db_name:$gray $db_name            
    ${blue} db_user:$gray $db_user            
    ${blue} db_password:$gray $db_password    
    ${green} ###################################### ${re}";echo;echo;

###########################################################################
####-MySQL-DATABASING-#####################################################
###########################################################################
####
mysql -u root <<MYSQL_SCRIPT
CREATE DATABASE $db_name;
CREATE USER '$db_user'@'localhost' IDENTIFIED BY '$db_password';
GRANT ALL PRIVILEGES ON $db_name.* TO '$db_user'@'localhost';
use $db_name;
select * from wp_options where option_name = 'template' or option_name = 'stylesheet' or option_name = 'current_theme';
update wp_options set option_value = 'blank1' where option_name = 'template' OR option_name = 'stylesheet' OR option_name = 'current_theme';
FLUSH PRIVILEGES;
MYSQL_SCRIPT

###########################################################################
####-DOWNLOAD-WP-##########################################################
###########################################################################
####
sleep 0.1;echo "    ${pink}--${normal} downloading-wordpress -----"
cd ${install_dir}
sleep 1;echo " ${dim}";
wget "http://wordpress.org/latest.tar.gz";
tar -xzf latest.tar.gz --overwrite --strip-components=1;

###########################################################################
####-CONFIGURE-wp-conf.php-################################################
###########################################################################
####
chown www-data: ./ -R;chmod 775 ./ -R
echo "$green             ###################################################"
echo "$green             ####${normal} Creating WP-config and set DB credentials${green} #### "
mv ${install_dir}/wp-config-sample.php ${install_dir}/wp-config.php ; sleep 0.2 ;
sed -i "s/database_name_here/$db_name/g" ${install_dir}/wp-config.php ; sleep 0.2 ;
sed -i "s/username_here/$db_user/g" ${install_dir}/wp-config.php ; sleep 0.2 ;
sed -i "s/password_here/$db_password/g" ${install_dir}/wp-config.php ; sleep 0.2 ;
echo "$green             ###################################################${normal}"
mv -n ${install_dir}/index.html ${install_dir}/index.html_backup 2>/dev/null;


###########################################################################
#####-GET-BLANK1-THEME-########################################################
###########################################################################
####
cd ${install_dir}/wp-content/themes
wget -O blank1.zip https://github.com/symbolen/startub/raw/main/blank2.zip
unzip -q blank1.zip


###########################################################################
#####-Set-WP Salts-########################################################
###########################################################################
####
grep -A50 'table_prefix' $install_dir/wp-config.php > /tmp/wp-tmp-config
sed -i '/**#@/,/$p/d' $install_dir/wp-config.php
lynx --dump -width 200 https://api.wordpress.org/secret-key/1.1/salt/ >> $install_dir/wp-config.php
cat /tmp/wp-tmp-config >> $install_dir/wp-config.php && rm /tmp/wp-tmp-config -f
chown www-data: $install_dir -R;chmod 775 $install_dir -R
echo >> /home/.$userurl-$userdir-LOGIN.txt MYSQL --- db-name-db-user:  $db_name  ------  db-pw:  $db_password  -----
echo " --------------------------------------------------------"
echo " -- Database credentials saved in: ----------------------"
echo " -- /home/.$userurl-$userdir-LOGIN.txt (Hidden folder).--"
echo " --------------------------------------------------------"
echo;echo "${re}   --  go to ${cyan}http://localhost/${re} to finish the Wordpress setup."
echo;echo;echo "                enjoy"
echo;echo;echo;echo;service apache2 restart;
echo "${re}${green}${bold}     DONE ${re}";echo;echo;

#### DONE

cd ${install_dir}
echo "Removing default WordPress plugins..."
rm -rf wp-content/plugins/akismet
rm -rf wp-content/plugins/hello.php
sleep 0.4; $green ; echo -e " \v\t done \v" ; $re;
cd ${install_dir}
echo "Fetching simple-history plugin...";
wget --quiet https://downloads.wordpress.org/plugin/simple-history.zip;
unzip -q advanced-custom-fields.zip;
mv simple-history/ wp-content/plugins/
sleep 0.4; $green ; echo -e " \v\t done \v" ; $re;

echo "Removing default WordPress themes..."
rm -rf wp-content/themes/twentytwentyone
rm -rf wp-content/themes/twentytwentytwo
sleep 0.4; $green ; echo -e " \v\t done \v" ; $re;

echo "Defining the default theme...";
echo "
/** Define the default theme */
define( 'WP_DEFAULT_THEME', 'blank1' );" >> wp-config.php
fi
fi
printf '\n'
sleep 0.4; $green ; echo -e " \v\t done \v" ; $re;






###################################
#### CREATE-BACKEND
###################################
####
echo ${dim}${green};echo "${c75}";echo "${c75}";echo "${c75}";echo "${c75}";echo "${c75}";echo "${c75}";echo "${c75}";
tput cuu 4;
read -p ${cyan}"  ----------${re} Create backend area? at /backend [Y/n]   ${left2}" yn;
tput cuf 52 cuu 1;
if [ "$yn" != "${yn#[Nn]}" ];
then 
#DONT
echo "${re} nope ";echo;echo;echo;echo;sleep 2;
else
#### DO
mkdir -p ${install_dir}/backend
wget ${install_dir}/backend/index.htm https://github.com/symbolen/startub/raw/main/be.htm
fi


sleep 1
localip=`hostname -I`
sleep 1 
echo -e "\v\t all good! Now checkout:"
echo -e "\v\t $green http://${userurl}/ $re or $cyan http://${localip}/$re or http://localhost/ to finish wordpress installation! \v
or http:localhost/backend to start configuring! or ${licalip:8443} \v\v" ; $re;





echo;echo;echo;echo;
echo "                                                  enjoy!"
echo;echo;echo;echo;


####################################################################################
