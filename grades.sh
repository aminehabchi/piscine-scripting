#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Error: wrong argument"
    exit 1
fi

if ! [[ "$1" =~ ^[0-9]+$ ]]; then
    echo "Error: wrong argument"
    exit 1
fi

for (( i=1; i<=$1; i++ )); do
    read -p "Student Name #$i: " name
    read -p "Student Grade #$i: " grade

    if [ -z "$grade" ]; then
        echo "Error: The grade is empty. Only numerical grades between 0 and 100 are accepted."
        exit 1
    elif ! [[ "$grade" =~ ^[0-9]+$ ]]; then
        echo "Error: The grade '$grade' is not a valid number. Only numerical grades between 0 and 100 are accepted."
        exit 1
    elif [ "$grade" -lt 0 ] || [ "$grade" -gt 100 ]; then
        echo "Error: The grade '$grade' must be between 0 and 100."
        exit 1
    fi

    if [ "$grade" -ge 90 ]; then
        echo "$name: You did an excellent job!"
    elif [ "$grade" -ge 75 ]; then
        echo "$name: You did a good job!"
    elif [ "$grade" -ge 50 ]; then
        echo "$name: You need a bit more effort!"
    else
        echo "$name: You had a poor performance!"
    fi

done
