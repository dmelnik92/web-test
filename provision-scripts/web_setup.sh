#!/bin/bash

mkdir -p /var/www/localhost/html
cp -R /vagrant /var/www/localhost/html
touch /etc/httpd/sites-available/localhost.conf
cat <<EOS >>/etc/httpd/sites-available/localhost.conf
<VirtualHost *:8181>
    ServerName www.localhost
    ServerAlias localhost
    DocumentRoot /var/www/localhost/html
    ErrorLog /var/www/localhost/log/error.log
    CustomLog /var/www/localhost/log/requests.log combined
</VirtualHost>
EOS

sudo ln -s /etc/httpd/sites-available/localhost.conf /etc/httpd/sites-enabled/localhost.conf

cd /var/www/localhost/html
git clone https://github.com/dmelnik92/web-test.git
mv web-test/shared-files/index.html ./