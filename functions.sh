#!/bin/bash

USERID=$(id -u)

VALIDATE()
    {
     
if [ $? -eq  0 ]
then 
     echo "... Success"
else 
   echo 
      "  ... Failed"
    exit 1
fi

  }



if [ $USERID -ne 0 ] 
then 
    echo " Please perform this action with super user access"
    exit 1
else 
    echo "Your are a super user"
fi

dnf install mysql -y 

VALIDATE $? Installing MySQL

dnf install git -y

VALIDATE $? Installing  Git 

