#!/bin/bash

echo "Configure Magento Demo EE Based on the current project"
    cd /var/www/html

echo "-> Prepare Host"
    # Add Virtulal host
    cp ./vendor/speroteck/magento-vagrant-integration/modules/configure-demo-magento-ee/magento-demo-ee.dev.conf /etc/httpd/conf.d/magento-demo-ee.dev.conf

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
    composer require --prefer-dist speroteck/magento-ee-demo-data dev-master

    mysql -uroot -e"CREATE DATABASE magento"
    mysql -uroot magento < magento-ee-db-dump.sql
    mysql -uroot magento -e"UPDATE core_config_data SET value=REPLACE(value, 'localhost/magento-enterprise', 'magento-demo-ee.dev') WHERE path LIKE('%base_url');"
    mysql -uroot magento -e"INSERT INTO core_config_data (scope, scope_id, path, value) VALUES ('default', 0, 'dev/template/allow_symlink', 1) ON DUPLICATE KEY UPDATE value=1"

    cp ./vendor/speroteck/magento-vagrant-integration/modules/configure-demo-magento-ee/local.xml ./app/etc/local.xml

echo "-> Success"
