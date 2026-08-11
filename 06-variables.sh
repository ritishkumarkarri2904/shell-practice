#!/bin/bash


START_TIME=$(date +%s)

echo "script executed at $START_TIME"

sleep 10

END_TIME=$(date +%s)

TOTAL_TIME=$((END_TIME - START_TIME))

echo "Total time taken to execute the script is $TOTAL_TIME seconds"


echo "script name: $0"