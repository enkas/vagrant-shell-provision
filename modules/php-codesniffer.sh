#!/bin/bash

echo "Install Code Sniffer"

echo "-> Prepare"
    if [[ $(which phpcs) == */phpcs ]]; then
        echo "Code Sniffer already installed"
        exit 0
    fi
    cd /tmp

echo "-> Install"
    pear install PHP_CodeSniffer
echo "-> Success"
