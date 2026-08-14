#!/bin/bash

NUM1=250
NUM2=250

SUM=$((NUM1+NUM2))

echo "The sum is: $SUM"


#Array = list of strings or numbers. In bash, arrays are zero-indexed, meaning the first element is at index 0.


FRUITS=("apple" "banana" "orange")
echo "The first fruit is: ${FRUITS[0]}"
echo "The second fruit is: ${FRUITS[1]}"
echo "The third fruit is: ${FRUITS[2]}"

