#!/bin/bash

if [ $#  -lt 2 ]; then
    echo "Error: two numbers must be provided"
    exit 1
fi

num1="$1"
num2="$2"


integer_regex='^-?[0-9]+$'

if ! [[ $num1 =~ $integer_regex && $num2 =~ $integer_regex ]]; then
    echo "Error: both arguments must be integers"
    exit 1
fi


if [ "$num2" -eq 0 ]; then
    echo "Error: division by zero is not allowed"
    exit 1
fi

result=$(( num1 / num2 ))

echo "$result"
