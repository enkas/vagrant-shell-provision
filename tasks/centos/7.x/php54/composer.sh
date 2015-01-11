#!/bin/bash

echo "NAME: Install Composer"

echo "-> PREPARE"

    if [[ $(which composer) == */composer ]]; then
        echo "Composer already installed"
        exit 0
    fi
    cd /tmp

echo "-> START"

    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer

    composer config -g process-timeout 3600

echo "-> FINISH"
