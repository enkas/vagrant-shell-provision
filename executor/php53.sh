#!/bin/bash

echo "Install PHP5.3"

echo "-> Prepare"
    if [[ $(which php) == */php ]]; then
        echo "PHP already installed"
        exit 0
    fi
    cd /tmp

echo "-> Install"
    for PACKAGE in php php-mcrypt php-gd php-mysql php-common php-xml php-mbstring php-devel php-pear php-pear-phing php-pecl-xdebug; do
        echo "--> Install package "$PACKAGE
        yum install -y -q $PACKAGE
    done

echo "-> Success"
