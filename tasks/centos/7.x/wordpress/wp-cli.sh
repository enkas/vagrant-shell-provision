#!/bin/sh

echo "NAME: Wordpress cli tool"

echo "-> PREPARE"

    if [[ $(which wp) == */wp ]]; then
        echo "Wp-cli tool already installed"
        exit 0
    fi
    cd /tmp

echo "-> START"

    # Do some job here
    curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
    chmod +x wp-cli.phar
    sudo mv wp-cli.phar /usr/local/bin/wp

echo "-> FINISH"