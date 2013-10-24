#!/bin/bash

echo "Install tools for Developers"

echo "-> Install"

    for PACKAGE in unzip vim-enhanced atop mc git tree; do
        echo "--> Install package "$PACKAGE
        yum install -y -q $PACKAGE
    done

echo "-> Success"