#!/bin/bash


USERID=$(id -u)
LOGS_FOLDER="/var/logs/shell-script"
LOGS_FILE="/var/logs/shell-script/$0.log"


if [ $USERID -ne 0 ]; then
    echo "Please run this script as root or with sudo privileges." | tee -a $LOGS_FILE
    exit 1
fi

#create logs folder if not exists
mkdir -p $LOGS_FOLDER

VALIDATE () {
if [ $1 -ne 0 ]; then
    echo "Installing $2 is failure" | tee -a $LOGS_FILE
    exit 1
else
    echo "Installing $2 is successful" | tee -a $LOGS_FILE
fi

}

for package in $@
do
    dnf list installed $package &>> $LOGS_FILE
    if [ $? -eq 0 ]; then
        echo "$package not installed installing now"
        dnf install -y $package &>> $LOGS_FILE
        VALIDATE $? "$package Installation"
    else
        echo "$package is already installed , skipping installation"
    fi    
   
done
