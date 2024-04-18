#!/bin/bash


USERID=$(id -u)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
TIME_STAMP=$(date +%F-%H-%M-%S) 
LOG_FILE=/tmp/$SCRIPT_NAME-$TIME_STAMP.log
R="\e[31"
G="\e[32"
N="\e[0"



VALIDATE()
{
    if [ $1 -ne 0 ]
    then
       echo -e "$2...$R Failed $N"
    else 
       echo -e "$2...$G Success $N"
    fi
}


if [ $USERID -ne 0 ]
then 
    echo "Please perform this action with super user access"
    exit 1 
else
   echo "You are a super user"
fi 

dnf install mysql -y &>>LOG_FILE
VALIDTAE $? "Installing MYSQL "

dnf install git -y &>>LOG_FILE
VALIDTAE $? "Installing GIT "
