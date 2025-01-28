#!/bin/bash

USERID=$(id -u)

if [ USERID -ne 0 ]
then 
    echo "ERROR:: You must have sudo access to execute the file"
    exit 1
fi

dnf list install mysql

if [ USERID -ne 0 ]
then # not installed
dnf install mysql -y
if [ USERID -ne 0 ]
then   
    echo "Installation MYSQL ... FAILURE"
    exit 1
else 
    echo "Installing MYSQL ... SUCCESS"
fi
else
    echo "MYSQL is already ... installed"
fi

# if [ $? -ne 0 ]
# then
#     echo "Installing MySQL ... FAILURE"
#     exit 1
# else
#     echo "Installing MySQL ... SUCCESS"
#fi

dnf list installed git 

if [ $? -ne 0 ]
then
    dnf install git -y
if [ $? -n 0 ]
then
    echo "Installation git ... FAILURE"
    exit 1
else
    echo "Installation git ... SUCCESS
fi    
else
    echo "git is already ... INSTALLED"
fi

