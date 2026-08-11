#!/bin/bash
#In this code we will learn about how to take input from user and store it in a variable
#we will use read command to take input from user and store it in a variable
#we will also learn about how to take input from user and store it in a variable using read command with -s option which will hide the input from user
#we will also learn about how to take input from user and store it in a variable using read command with -p option which will display a prompt to the user before taking input
echo "Please Enter your username "
read Username

echo "your username is $Username"

echo "pls enter your paswword"
read -s password

