#!/bin/bash



N1=$1
N2=$2

if [ $N1 -ge $N2]
then
    echo " Given number $N1 is greater than $N2 "
else 
    echo "Given number $N1 is less than $N2 "
fi 

#-gt, -lt, -eq, -ge, -le