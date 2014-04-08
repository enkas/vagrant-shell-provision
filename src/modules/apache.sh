#!/bin/bash

echo "-> Install apache"

echo "-> Prepare"
    if [[ $(which httpd) == */httpd ]]; then
        echo "Apache already installed"
        exit 0
    fi
    cd /tmp

echo "-> Install"
    yum install -y -q httpd
    chkconfig httpd on
    service httpd start
    chmod -R 777 /var/www/html

echo "-> Success"
