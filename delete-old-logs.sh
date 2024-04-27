#!/bin/bash 

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"


SOURCE_DIRECTORY=/tmp/app-logs

if [-d SOURCE_DIRECTORY ]
then 
   echo -e "$G $SOURCE_DIRECTORY exist $N"
else
   echo -e " $R $SOURCE_DIRECTORY doen't exit $N"
   exit 1
fi

FILES=$(find $SOURCE_DIRECTORY  -name "*.log"  -mtime +14)

while IFS= read -r line 
do
  echo "Files to delte : $line"
  rm -rf $line
done <<< $FILES





  

