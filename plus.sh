#!/bin/sh

# Check if both arguments exist
if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Error: You must provide two numbers."
    exit 0
fi

# Check if $1 is a number
echo "$1" | grep -Eq '^-?[0-9]+$'
if [ $? -ne 0 ]; then
    echo "Error: First argument is not a valid number."
    exit 0
fi

# Check if $2 is a number
echo "$2" | grep -Eq '^-?[0-9]+$'
if [ $? -ne 0 ]; then
    echo "Error: Second argument is not a valid number."
    exit 0
fi

# If everything is valid, do the calculation
expr "$1" + "$2"
