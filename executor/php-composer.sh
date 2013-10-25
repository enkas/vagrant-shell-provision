#!/bin/bash

echo "Install Composer Package manager"

echo "-> Prepare"
    if [[ $(which composer) == */composer ]]; then
        echo "Composer already installed"
        return 0
    fi
    cd /tmp

    echo "--> Install dependencies executor/php53.sh"
    ./executor/php53.sh

    echo "--> Apply fix of timezone Europe/Kiev by default"
    sed -i 's+;date.timezone =+date.timezone = 'Europe/Kiev' +g' /etc/php.ini

echo "-> Install"
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin
    mv -v /usr/bin/composer.phar /usr/bin/composer
    composer config --global repositories.speroteck composer http://composer.speroteck.com/
    composer config --global repositories.firegento composer http://packages.firegento.com/

echo "-> Success"
