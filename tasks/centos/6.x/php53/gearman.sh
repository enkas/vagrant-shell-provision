#!/bin/bash

echo "NAME: Install gearman php53 extension"

echo "-> PREPARE"
    # There you have to verify if task should be executed or not
    # Prepare system for execution
    # echo "-> EXIT: REASON OF THE EXIT IS HERE"
    # exit 0; # will notify that job could not be started maybe it was already executed

echo "-> START"

        yum install -y php-pecl-gearman

echo "-> FINISH"
