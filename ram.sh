#!/bin/bash

RAM_USAGE=$(free --mega -h| awk -F '{print $6F}' | cut  -d  "M" )
THRESHOLD=600
MESSAGE="" 

    if [ $RAM_USAGE -le $THRESHOLD ]
    then
        MESSAGE =" Current available ram memory is less than threshold value: $AVL"   
    fi

echo -e "Message: $MESSAGE"

echo "$MESSAGE" | mail -s "RAM Usage Alert" manishamaidam169@gmail.com

# echo "body" | mail -s "subject" to-address