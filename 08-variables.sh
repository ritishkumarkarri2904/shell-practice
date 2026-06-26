#!/bin/bash

NUM1=10
NUM2=20

sum=$((NUM1 + NUM2))
echo "The sum of $NUM1 and $NUM2 is: $sum"


PLAYERS="Sachin, Dhoni, Kohli"
echo "The players are: $PLAYERS"

echo "The first player is: ${PLAYERS[0]}"
echo "The second player is: ${PLAYERS[1]}"
echo "The third player is: ${PLAYERS[2]}"