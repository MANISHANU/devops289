#!/bin/bash

RAM_USAGE=$(free --mega -h )
THRESHOLD=500

while IFS= read -r line
do
    AVL=$(echo $line |  awk -F " " '{print $6F}' |cut -d "M" -f1 )
    
    if [ $RAM_USAGE -le $THRESHOLD ]
    then
        MESSAGE=" Current available ram memory is less than threshold value: $AVL \n"
    fi
done <<< $RAM_USAGE

echo -e "Message: $MESSAGE"

echo "$MESSAGE" | mail -s "RAM Usage Alert" manishamaidam169@gmail.com

# echo "body" | mail -s "subject" to-address