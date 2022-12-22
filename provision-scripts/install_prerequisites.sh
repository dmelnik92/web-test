#!/bin/bash

echo "* Update repositories and install pre-defined software"
yum update
yum install -y fontconfig openjdk-17-jre groovy git httpd