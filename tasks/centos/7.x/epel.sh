#!/bin/bash

echo "NAME: Install epel repository"

echo "-> PREPARE"
    if [[ $(yum repolist) == *epel* ]]; then
        echo "EPEL Repository already installed"
        exit 0
    fi

    yum -y update
    yum install wget -y
    cd /tmp

echo "-> START"

    wget -q http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-5.noarch.rpm
    rpm -Uvh epel-release-7-5.noarch.rpm
    rm epel-release-7-5.noarch.rpm

echo "-> FINISH"
