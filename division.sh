#!/bin/bash

if [ $#  -lt 2 ]; then
    echo "Error: two numbers must be provided"
    exit 0
fi


integer_regex='^-?[0-9]+$'

fi
if [[ ! "$a" =~ ^[+-]?[0-9]+$ || ! "$b" =~ ^[+-]?[0-9]+$ ]]; then
    echo "Error: both arguments must be integers"
    exit 0
fi

if [ "$2" -eq 0 ]; then
    echo "Error: division by zero is not allowed"
    exit 0
fi



echo $(( $1 / $2 )) | bc
