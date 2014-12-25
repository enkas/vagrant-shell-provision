#!/bin/bash

echo "NAME: Install Magerun"

echo "-> PREPARE"

    if [[ $(which magerun) == */magerun ]]; then
        echo "Mage CLI already installed"
        exit 0
    fi
    cd /tmp

echo "-> START"

    wget https://raw.github.com/netz98/n98-magerun/master/n98-magerun.phar
    chmod +x ./n98-magerun.phar
    mv ./n98-magerun.phar /usr/bin/magerun

echo "-> FINISH"
