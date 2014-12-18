#!/bin/bash

echo "Install PHP5.3"

echo "-> Prepare"
    if [[ $(which php) == */php ]]; then
        echo "PHP already installed"
        exit 0
    fi
    cd /tmp

echo "-> Install"

    echo "--> Apply fix of timezone Europe/Kiev by default"
    sed -i 's+;date.timezone =+date.timezone = 'Europe/Kiev' +g' /etc/php.ini

    for PACKAGE in php php-mcrypt php-gd php-mysql php-xml php-mbstring php-devel php-pear php-pear-phing php-pecl-xdebug php-phpunit-PHPUnit; do
        echo "--> Install package "$PACKAGE
        yum install -y -q $PACKAGE
    done

    echo "--> Configure xdebug"
    echo "xdebug.remote_enable=1" >> /etc/php.d/xdebug.ini
    echo "xdebug.remote_connect_back=1" >> /etc/php.d/xdebug.ini

echo "-> Success"
