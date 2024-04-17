#!/bin/bash

USERID=$(id -u)

#root user id is always zero

if [ $USERID -ne 0 ]
then
    echo "Please run this script with root access."
    exit 1 # manually exit if error comes other wise remaining program will continue for exec
else
    echo "You are super user"
fi

dnf install mysql -y

if [ $? -ne 0 ] # $? indictes the status of previous command exec is success  0 else 1
then
    echo "Installation of mysql...FAILURE"
    exit 1
else
    echo "Installation of mysql...SUCCESS"
fi

dnf install git -y

if [ $? -ne 0 ]
then
    echo "Installation of git...FAILURE"
    exit 1
else
    echo "Installation of Git...SUCCESS"
fi

echo "is script proceeding?"