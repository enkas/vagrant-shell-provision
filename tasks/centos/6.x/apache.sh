#!/bin/bash

echo "NAME: Install apache"

echo "-> PREPARE"
    if [[ $(which httpd) == */httpd ]]; then
        echo "-> EXIT: Apache already installed"
        exit 0;
    fi

echo "-> START"

    yum install -y -q httpd

echo "-> FINISH"