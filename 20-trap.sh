#!/bin/bash

set -e # Exit on any error
trap 'echo "Error: Script failed at line $LINENO, command: $BASH_COMMAND"' ERR

USERID=$(id -u)
LOGS_FOLDER="/var/logs/shell-script"
LOGS_FILE="/var/logs/shell-script/$0.log"

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[34m"

if [ $USERID -ne 0 ]; then
    echo -e " $R Please run this script as root or with sudo privileges. $N" | tee -a $LOGS_FILE
    exit 1
fi

#create logs folder if not exists
mkdir -p $LOGS_FOLDER

# we removed the validate fun bcz of set -e and trap ERR, so no need to validate the exit status of the command, if it fails it will exit the script and print the error message with line number and command.

for package in $@
do
    dnf list installed $package &>> $LOGS_FILE
    if [ $? -eq 0 ]; then
    echo -e " $G $package not installed $N,$Y installing now $N"
    dnf install -y $package &>> $LOGS_FILE
else
    echo -e " $Y $package not installed, installing now $N"
    dnf install -y $package
fi    
   
done
