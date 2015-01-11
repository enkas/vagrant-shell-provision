#!/bin/bash

# http://www.cyberciti.biz/faq/howto-install-linux-apache-mariadb-php-lamp-stack-on-centos7-rhel7/

echo "NAME: Install apache"

echo "-> PREPARE"
    if [[ $(which httpd) == */httpd ]]; then
        echo "-> EXIT: Apache already installed"
        exit 0;
    fi

echo "-> START"

    yum install -y -q httpd
    echo "--> Turn apache on"
    systemctl enable httpd.service
    echo "--> Start apache webserver"
    systemctl start httpd.service

echo "-> FINISH"