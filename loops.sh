#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

LOG_FOLDER="/var/log/shell-script-logs"
TIMESTAMP=$(date +%Y-%m-%d-%H-%M-%S)
LOG_FILE=$(echo $0 | cut -d "." -f1 )
LOG_FILE_NAME="$LOG_FOLDER/$LOG_FILE-$TIMESTAMP.log"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2 ... $R FAILURE $N"
        exit 1
    else
        echo -e "$2 ...$G SUCCESS $N"
    fi
}
echo "script started executing at: $TIMESTAMP" &>>$LOG_FILE_NAME

if [ $USERID -ne 0 ]
then
    echo "ERROR:: You must have sudo access to execute this script"
    exit 1 #other than 0
fi
for package in $@ #$@ all packages
do
    dnf list installed @package  &>>$LOG_FILE_NAME
    
    if [ $? -ne 0 ]
    then # not installed
        dnf install $package -y  &>>$LOG_FILE_NAME
        VALIDATE $? "Installing $package"
    else
        echo -e "$package is already ...$Y INSTALLED $N"
    fi
done