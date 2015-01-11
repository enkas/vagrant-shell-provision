#!/bin/bash

# http://www.cyberciti.biz/faq/howto-install-linux-apache-mariadb-php-lamp-stack-on-centos7-rhel7/

echo "NAME: Install MySql"

echo "-> PREPARE"

    if [[ $(which mysql) == */mysql ]]; then
        echo "MySql already installed"
        exit 0
    fi

echo "-> START"

    yum install -y -q mariadb-server mariadb

    systemctl enable mariadb.service
    service mysqld start

echo "-> FINISH"