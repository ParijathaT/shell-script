#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]
then 
echo "ERROR:You must have sudo access to execute this script"
exit 1
fi
    dnf list installed mysql
    if [ $? -ne 0 ]  
    then #not istalled
        dnf install mysql -y
if [ $? -ne 0 ]
then
echo "Installing MYSQL ..... is FAILURE"
exit 1 #other than 0
else 
echo "Installing MYSQL ..... is SUCCESS"
fi
else
echo "MYSQL is allready INSTALLED"
fi
dnf list installed git
if [ $? -ne 0 ]
then
dnf install git -y
if [ $? -ne 0 ]
then
echo "Installing GIt ..... is FAILURE"
exit 1
else 
echo "Installing GIT ..... is SUCCESS"
fi
echo "GIT already INSTALLED"
fi