#!/bin/bash

#!/bin/bash

echo "NAME: Install apache"

echo "-> PREPARE"
    CHECK=`chkconfig --list httpd | grep on | wc -l`
    if [ $CHECK -eq 1 ]; then
        echo "-> EXIT: Apache already configured"
        exit 0;
    fi

echo "-> START"

    echo "--> Turn apache on"
    chkconfig httpd on
    echo "--> Start apache webserver"
    service httpd start

echo "-> FINISH"
