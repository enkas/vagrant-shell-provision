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

    wget -q http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
    rpm -Uvh epel-release-6-8.noarch.rpm
    rm epel-release-6-8.noarch.rpm

echo "-> FINISH"
