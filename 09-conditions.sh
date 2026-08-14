#!/bin/bash

NUMBER=$1

if [ $NUMBER -gt 20 ]; then
    echo "The giveen $NUMBER is greater than 20"
    
elif [ $NUMBER -eq 20 ]; then
    echo "the given $NUMBER is equal to 20"

else [ $NUMBER -lt 20 ]; then
    echo "the given $NUMBER is less than 20"
fi