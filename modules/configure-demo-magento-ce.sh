#!/bin/bash

echo "Configure Magento Demo CE Based on the current project"
    cd /var/www/html

echo "-> Prepare Host"
    # Add Virtulal host
    cp ./vendor/speroteck/magento-vagrant-integration/modules/configure-demo-magento-ce/magento-demo-ce.dev.conf /etc/httpd/conf.d/magento-demo-ce.dev.conf

    service httpd graceful

echo "-> Configure"

    # Check on exists
    file="./app/etc/local.xml"
    if [ -f "$file" ]
    then
        echo "Magento already installed"
        exit 0
    fi

    # Install Demo data
    composer require --prefer-dist speroteck/magento-ce-demo-data dev-master

    mysql -uroot -e"CREATE DATABASE magento"
    mysql -uroot magento < magento_ce_db_dump.sql
    mysql -uroot magento -e"UPDATE core_config_data SET value=REPLACE(value, 'localhost/magento', 'magento-demo-ce.dev') WHERE path LIKE('%base_url');"
    mysql -uroot magento -e"INSERT INTO core_config_data (scope, scope_id, path, value) VALUES ('default', 0, 'dev/template/allow_symlink', 1) ON DUPLICATE KEY UPDATE value=1"

    cp ./vendor/speroteck/magento-vagrant-integration/modules/configure-demo-magento-ce/local.xml ./app/etc/local.xml

echo "-> Success"
