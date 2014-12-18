#!/bin/bash

echo "NAME: Install apache"

echo "-> PREPARE"
    if [[ $(which httpd) == */httpd ]]; then
        echo "-> EXIT: Apache already installed"
        exit 0;
    fi

echo "-> START"

    yum install -y -q httpd
    echo "--> Turn apache on"
    chkconfig httpd on
    echo "--> Start apache webserver"
    service httpd start

echo "-> FINISH"