#!/bin/bash

NUMBER=$1

if [ $NUMBER -gt 20 ]; then
    echo "The given $NUMBER is greater than 20"
elif [ $NUMBER -eq 20 ]; then
    echo "The given $NUMBER is equal to 20"
else
    echo "The given $NUMBER is less than 20"
fi