#!/bin/bash

sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-Linux-*
sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.epel.cloud|g' /etc/yum.repos.d/CentOS-Linux-*

echo "* Update repositories and install pre-defined software"
yum update
yum install -y fontconfig git httpd vim policycoreutils-python-utils net-tools tree