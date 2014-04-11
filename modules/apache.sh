#!/bin/bash

echo "-> Install apache"

echo "-> Prepare"
    if [[ $(which httpd) == */httpd ]]; then
        echo "Apache already installed"
        exit 0
    fi
    cd /tmp

echo "-> Install"
    yum install -y -q httpd
    chkconfig httpd on

    # Set UID GUID
    usermod -u 123 apache
    groupmod -g 123 apache

    service httpd start

    # Turn off iptables to fix the problem with apache (?)
    chkconfig ip6tables off
    chkconfig iptables off

echo "-> Success"
