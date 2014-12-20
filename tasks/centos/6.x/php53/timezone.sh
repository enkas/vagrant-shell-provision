#!/bin/bash

echo "NAME: Timezone in PHP5.3"
# in the Vagrant file use string like this:
# config.vm.provision "shell", path: "./vendor/speroteck/magento-vagrant-integration/tasks/centos/6.x/php53/timezone.sh", args: "Europe/Kiev"

echo "-> PREPARE"
    if [[ ! $1 ]]; then
        echo "timezone for php is not defined"
        exit 0
    fi

echo "-> START"

    echo "--> Configure timezone"
    sed -i 's+;date.timezone =+date.timezone = '$1' +g' /etc/php.ini

echo "-> FINISH"
