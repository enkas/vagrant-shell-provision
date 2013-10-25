#!/bin/bash

echo "Install MySql"

echo "-> Prepare"
    if [[ $(which mysql) == */mysql ]]; then
        echo "MySql already installed"
        return 0
    fi
    cd /tmp

echo "-> Install"
    yum -y -q install mysql
    yum -y -q install mysql-server
    chkconfig mysqld on

echo "-> Run"
    service mysqld start

echo "-> Success"
