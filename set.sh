#!/bin/bash

set -e 

failure(){

    echo "  Failed at:$1  with error-msg:$2 "
}

trap 'failure "${lineno}"  "${BASH_COMMAND}"' ERR

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
   echo "Not a root user , Please run with root this cmd with access "
   exit 1
else
   echo "Your are root user"
fi 

dnf install mysqll -y 
dnf install git 

echo "Is sript proceeding"

