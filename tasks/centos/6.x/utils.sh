#!/bin/bash

echo "NAME: Install wget unzip vim-enhanced mc git"

echo "-> PREPARE"

    yum update

echo "-> START"

    for PACKAGE in wget unzip vim-enhanced mc git; do
        echo "--> Install package "$PACKAGE
        yum install -y -q $PACKAGE
    done

echo "-> FINISH"