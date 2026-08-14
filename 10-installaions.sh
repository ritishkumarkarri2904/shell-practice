#!/bin/bash


USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "Please run this script as root or with sudo privileges."
    
fi

echo "Installing Nginx web server..."
dnf install -y nginx