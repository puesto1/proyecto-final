#!/bin/bash
# Retrive new lists of packages
apt-get update

# Install nginx
apt-get install -y nginx

#Install php packages for nginx
apt-get install -y php-fpm php-mysql php-curl php-gd php-mbstring php-mcrypt php-xml php-xmlrpc

#Configure php for nginx
sed -i "s/;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/" /etc/php/7.0/fpm/php.ini
systemctl restart php7.0-fpm

# Copy configuration file for nginx
cp /vagrant/config/nginx.default /etc/nginx/sites-available/default
systemctl restart nginx