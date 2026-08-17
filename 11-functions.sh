#!/bin/bash


USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "Please run this script as root or with sudo privileges."
    exit 1
fi

echo "Installing Nginx web server..."

dnf install -y nginx

VALIDATE () {

if [ $1 -ne 0 ]; then
    echo "Installing $2 is failure"
    exit 1
else
    echo "Installing $2 is successful"
fi

}

VALIDATE $? "Nginx"

dnf install -y mysql-server

VALIDATE $? "MySQL"

dnf install -y nodejs

VALIDATE $? "Nodejs"