#!/bin/bash

echo "* Update firewall"
firewall-cmd --permanent --add-service=http
firewall-cmd --permanent --add-service=https
firewall-cmd ––permanent ––add-port=8181/tcp
firewall-cmd ––reload