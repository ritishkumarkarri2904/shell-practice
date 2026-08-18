#!/bin/bash

USERID=$(id -u)
LOGS_FOLDER="/var/logs/shell-script"
LOGS_FILE="/var/logs/shell-script/$0.log"


if [ $USERID -ne 0 ]; then
    echo "Please run this script as root or with sudo privileges."
    exit 1
fi

#create logs folder if not exists
mkdir -p $LOGS_FOLDER

VALIDATE () {
if [ $1 -ne 0 ]; then
    echo "Installing $2 is failure"
    exit 1
else
    echo "Installing $2 is successful"
fi

}

dnf install -y nginx &>> $LOGS_FILE
VALIDATE $? "Nginx"

dnf install -y mysql-server &>> $LOGS_FILE
VALIDATE $? "MySQL"

dnf install -y nodejs &>> $LOGS_FILE
VALIDATE $? "Nodejs"
