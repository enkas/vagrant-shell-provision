#!/bin/bash

echo "Install Magento CLI"

echo "-> Prepare"
    if [[ $(which magerun) == */magerun ]]; then
        echo "Mage CLI already installed"
        exit 0
    fi
    cd /tmp

echo "-> Install"
    curl -o n98-magerun.phar https://raw.github.com/netz98/n98-magerun/master/n98-magerun.phar
    chmod +x ./n98-magerun.phar
    sudo mv ./n98-magerun.phar /usr/local/bin/magerun

echo "-> Success"
