#!/bin/bash

# Check number of arguments
if [ "$#" -ne 1 ]; then
    echo "Error: expect 1 argument only!" >&2
    exit 1
fi

# Check if argument is a positive number
if ! [[ "$1" =~ ^[0-9]+$ ]]; then
    echo "Error: expect 1 argument only!" >&2
    exit 1
fi

notes=()  # Array to store messages

# Loop over each student
for (( i=1; i<=$1; i++ )); do
    read -p "Student Name #$i: " name
    read -p "Student Grade #$i: " grade

    # Validate grade
    if [ -z "$grade" ]; then
        echo "Error: The grade '$grade' is not a valid input. Only numerical grades between 0 and 100 are accepted." >&2
        exit 1
    elif ! [[ "$grade" =~ ^[0-9]+$ ]]; then
        echo "Error: The grade '$grade' is not a valid input. Only numerical grades between 0 and 100 are accepted." >&2
        exit 1
    elif [ "$grade" -lt 0 ] || [ "$grade" -gt 100 ]; then
        echo "Error: The grade '$grade' is not a valid input. Only numerical grades between 0 and 100 are accepted." >&2
        exit 1
    fi

    # Add message to array based on grade
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

# Print all messages
for (( i=0; i<${#notes[@]}; i++ )); do
    echo "${notes[i]}"
done
