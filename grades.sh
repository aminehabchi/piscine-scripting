#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Error: expect 1 argument only!"
    exit 1
fi

if ! [[ "$1" =~ ^[0-9]+$ ]]; then
    echo "Error: expect 1 argument only!"
    exit 1
fi

notes=()

for (( i=1; i<=$1; i++ )); do
    read -p "Student Name #$i: " name
    read -p "Student Grade #$i: " grade

    if [ -z "$grade" ]; then
        echo "Error: The grade '$grade' is not a valid number. Only numerical grades between 0 and 100 are accepted."
        exit 1
    elif ! [[ "$grade" =~ ^[0-9]+$ ]]; then
        echo "Error: The grade '$grade' is not a valid number. Only numerical grades between 0 and 100 are accepted."
        exit 1
    elif  [ "$grade" -gt 100 ]; then
        echo "Error: The grade '$grade' is not a valid number. Only numerical grades between 0 and 100 are accepted."
        exit 1
    fi

    if [ "$grade" -ge 90 ]; then
        notes+=("$name: You did an excellent job!")
    elif [ "$grade" -ge 70 ]; then
        notes+=("$name: You did a good job!")
    elif [ "$grade" -ge 50 ]; then
        notes+=("$name: You need a bit more effort!")
    else
        notes+=("$name: You had a poor performance!")
    fi

done


for (( i=0; i<${#notes[@]}; i++ )); do
    echo "${notes[i]}"
done