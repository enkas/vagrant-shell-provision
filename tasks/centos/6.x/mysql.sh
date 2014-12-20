#!/bin/bash

echo "NAME: Install MySql"

echo "-> PREPARE"

    if [[ $(which mysql) == */mysql ]]; then
        echo "MySql already installed"
        exit 0
    fi

echo "-> START"

    yum -y -q install mysql
    yum -y -q install mysql-server

    chkconfig mysqld on
    service mysqld start

echo "-> FINISH"