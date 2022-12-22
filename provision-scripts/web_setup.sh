#!/bin/bash

echo "* Configuring web & app"
cd /home/vagrant/
git clone https://github.com/dmelnik92/web-test.git
chown -R vagrant:vagrant /home/vagrant/
cp /home/vagrant/web-test/shared-files/index.html /var/www/html/
systemctl start httpd
systemctl enable httpd