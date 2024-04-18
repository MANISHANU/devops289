#!/bin/bash

USERID=$(id -u)
TIME_STAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME$(echo $0 | cut -d "." -f1)
LOG_FILE=/tmp/$SCRIPT_NAME-$TIME_STAMP.log


VALIDATE()
    {
     
if [ $1 -ne  0 ]
then 
     echo "$2... Failed"
     exit 1
else 
   echo 
      " $2... Success"

fi

  }



if [ $USERID -ne 0 ] 
then 
    echo " Please perform this action with super user access"
    exit 1
else 
    echo "Your are a super user"
fi

dnf install mysql -y  &>>$LOG_FILE

VALIDATE $? Installing MySQL

dnf install git -y &>>$LOG_FILE

VALIDATE $? Installing  Git 

