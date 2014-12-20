#!/bin/bash

echo "NAME: Install PHP5.3"

echo "-> PREPARE"

    if [[ $(which php) == */php ]]; then
        echo "PHP already installed"
        exit 0
    fi
    cd /tmp

echo "-> START"

    for PACKAGE in php php-mcrypt php-gd php-mysql php-xml php-mbstring php-devel php-pear; do
        echo "--> Install package "$PACKAGE
        yum install -y -q $PACKAGE
    done

echo "-> FINISH"
