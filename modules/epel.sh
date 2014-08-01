#!/bin/bash

echo "Install EPEL Repository"

# http://blog.famillecollet.com/pages/Config-en

echo "-> Prepare"
    if [[ $(yum repolist) == *epel* ]]; then
        echo "EPEL Repository already installed"
        exit 0
    fi
    cd /tmp
    yum -y update

echo "-> Install"

    yum install wget -y
    # Import Key
    wget --no-check-certificate https://fedoraproject.org/static/0608B895.txt -O /etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-6
    rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-6

    # Add Repository
    wget http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
    sudo rpm -Uvh epel-release-6*.rpm

echo "-> Success"
