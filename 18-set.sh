#!/bin/bash

set -e # Exit on any error

#!/bin/bash

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

VALIDATE () {
if [ $1 -ne 0 ]; then
    echo -e "Installing $2 is $R failure $N" | tee -a $LOGS_FILE
    exit 1
else
    echo -e "Installing $2 is $G successful $N" | tee -a $LOGS_FILE
fi

}

for package in $@
do
    if [ $? -eq 0 ]; then
    echo -e " $G $package is already installed $N,$Y skipping installation $N"
else
    echo -e " $Y $package not installed, installing now $N"
    dnf install -y $package
    #VALIDATE $? "$package Installation"
fi    
   
done
