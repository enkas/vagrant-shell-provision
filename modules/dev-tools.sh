#!/bin/bash

echo "Install tools for Developers"

echo "-> Prepare"
    # Fix problem on CentOS synced folders on VM
    sed -i 's/SELINUX=.*/SELINUX=disabled/' /etc/selinux/config
    setenforce 0

echo "-> Install"

    for PACKAGE in unzip vim-enhanced atop mc git links; do
        echo "--> Install package "$PACKAGE
        yum install -y -q $PACKAGE
    done

echo "-> Success"