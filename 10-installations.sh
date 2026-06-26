#!/bin/bash/

USERID=$(id -u)

if [$USERID -ne 0]; then
    echo"Please run this script as root."
    exit 1
fi

echo "Installing necessary packages..."
dnf install nginx -y 

if [$? -ne 0]; then
    echo "Installing Nginx failed"
    exit 1
else
    echo "Instaling Nginx is successful"
fi