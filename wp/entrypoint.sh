#!/bin/bash
apt-get update
apt-get install -y apache2
sudo apt-get install -y unzip
service apache2 start
apt-get install -y php5 libapache2-mod-php5
service apache2 restart
apt-get install -y nano
apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends
apt-get install -y apache2-bin
apt-get install -y apache2.2-common
a2enmod rewrite expires
service apache2 restart
apt-get update && apt-get install -y libpng12-dev libjpeg-dev && rm -rf /var/lib/apt/lists/* && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr && docker-php-ext-install gd mysqli opcache
#cd /opt/

apt-get update
apt-get install -y wget
#wget http://wordpress.org/latest.tar.gz
#tar xzvf latest.tar.gz
apt-get update
apt-get -y install php5-gd libssh2-php
apt-get install -y nano
#ls
#cd wordpress/
#ls
#cp wp-config-sample.php wp-config.php

service apache2 restart
apt-get install -y rsync

rsync -avP /opt/wordpress/ /var/www/html/

#mkdir /var/www/html/wp-content/uploads

apt-get -y install php5-mysql php5-curl php5-gd php5-intl php-pear php5-imagick php5-imap php5-mcrypt php5-memcache php5-ming php5-ps php5-pspell php5-recode php5-snmp php5-sqlite php5-tidy php5-xmlrpc php5-xsl
service apache2 restart
