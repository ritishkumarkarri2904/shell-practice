#!/bin/bash


USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "Please run this script as root or with sudo privileges."
    exit 1
fi

echo "Installing Nginx web server..."

dnf install -y nginx

if [ $? -ne 0 ]; then
    echo "Installing Nginx is failure"
    exit 1
else
    echo "Installing Nginx is successful"
fi

dnf install -y mysql-server

if [ $? -ne 0 ]; then
    echo "Installing MySQL is failure"
    exit 1
else
    echo "Installing MySQL is successful"
fi

dnf install -y nodejs

if [ $? -ne 0 ]; then
    echo "Installing Nodejs is failure"
    exit 1
else
    echo "Installing Nodejs is successful"
fi