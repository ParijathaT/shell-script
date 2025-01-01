#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]
then 
echo "ERROR:You must have sudo access to execute this script"
exit 1
fi
dnf install mysql -y
if [ $? -ne 0 ]
then
echo "Installing MYSQL ..... is FAILURE"
exit 1
else 
echo "Installing MYSQL ..... is SUCCESS"
if
dnf install git -y
if [ $? -ne 0 ]
echo "Installing GIt ..... is FAILURE"
exit 1
else 
echo "Installing GIT ..... is SUCCESS"
if