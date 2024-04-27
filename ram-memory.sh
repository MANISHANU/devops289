#!/bin/bash

RAM_USAGE=$(free --mega )
THRESHOLD=600
MESSAGE="" 

while IFS= read -r line
do
    AVL=$(echo $line | awk -F " " '{print $6}')
    if [ $AVL -lt $THRESHOLD ]
    then
        MESSAGE=" Current available ram memory is less than threshold value: $AVL"
    fi
done <<< $RAM_USAGE

echo -e "Message: $MESSAGE"

echo "$MESSAGE" | mail -s "RAM Usage Alert" manishamaidam169@gmail.com

# echo "body" | mail -s "subject" to-address