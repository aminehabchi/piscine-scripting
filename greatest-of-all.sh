#!/bin/bash

c=0

max=0 
while true; do
    c=$((c + 1))
    echo -n "Enter a number: "
    read -r line
    if [[ ! $line =~ ^[0-9]+$ ]]; then
        echo "ERROR: Invalid input only positive numerical characters are allowed"
        exit 0
    fi
    if [[ $line -gt 10000 ]]; then
        echo "ERROR: The number entered is too large"
        exit 0
    fi
    
    if [[ $line -gt $max ]]; then
        max=$line
    fi

    if [[ $c == 10 ]]; then
        break
    fi
done



echo "The largest number is: $max"