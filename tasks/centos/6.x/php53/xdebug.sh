#!/bin/bash

echo "NAME: Install xdebug"

echo "-> PREPARE"

    CHECK=`php --ri xdebug | wc -l`
    if [ $CHECK -ne 1 ]; then
        echo "PHP already installed"
        exit 0
    fi

echo "-> START"

    echo "--> Install package xdebug"
    yum install -y -q php-pecl-xdebug

    echo "--> Configure xdebug"
    echo "xdebug.remote_enable=1" >> /etc/php.d/xdebug.ini
    echo "xdebug.remote_connect_back=1" >> /etc/php.d/xdebug.ini

echo "-> FINISH"
