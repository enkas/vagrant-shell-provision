#!/bin/bash

echo "Configure Magento Demo EE Based on the current project"

echo "-> Prepare Host"


echo "-> Configure"
    composer require --prefer-dist speroteck/magento-ce-demo-data dev-master

echo "-> Success"
