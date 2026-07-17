#!/bin/bash

PERSON1="$1"
PERSON2="$2"
PERSON3="$3"

echo "${PERSON1} : Hi ra How are you? $PERSON2 $PERSON3"
echo "${PERSON2} : I am fine how are you ${PERSON1}"
echo "${PERSON3} : How are you guys doing ${PERSON2}"
echo "${PERSON1} : I am doing good ${PERSON2}"
echo "${PERSON2} : I am doing good ${PERSON3}"
echo "${PERSON3} : I am doing good ${PERSON1}"
echo "${PERSON2} : What are your plans for the weekend?"
echo "${PERSON1} : I am planning to go hiking ${PERSON3}"
echo "${PERSON3} : I am planning to go to the beach ${PERSON1}"