#!/bin/sh

echo "-> Configure certs"
    if [[ ! -f /vagrant/certs/id_rsa ]]; then
        cat << EOF
ERROR: Private key does not exist.

Please put your private and public keys registered on http://gitlab.speroteck.com
to be able to deploy project on VM connect.

There should be 2 files:
    * id_rsa       - private key
    * id_rsa.pub   - public key

How to generate keys see in the help of gitlab (https://gitlab.speroteck.com/help/ssh)

EOF
    fi

    mkdir -p ~/.ssh && cp -r /vagrant/certs/id* ~/.ssh/
    echo "StrictHostKeyChecking no" > ~/.ssh/config
    chmod 600 ~/.ssh/*

    if [[ $(ssh -T git@gitlab.speroteck.com) != *"Welcome to GitLab"* ]]; then
        echo "ERROR: Something wrong with ssh keys. Speroteck Gitlab is not open for this VM"
        exit 1
    fi