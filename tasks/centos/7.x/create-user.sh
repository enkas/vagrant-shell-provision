#!/bin/bash

echo "NAME: Add custom user with sudo priveleges"

echo "-> PREPARE"

    if [[ $(cat /etc/passwd | grep $1) ]]; then
        echo "-> EXIT: User $1 already exist"
        exit 0;
    fi

echo "-> START"

    # Do some job here
    echo "--> Create user: "$1;
    adduser $1
    usermod --password $2 $1
    echo $1" ALL=(ALL) ALL" >> /etc/sudoers

echo "-> FINISH"
