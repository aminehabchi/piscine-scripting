#!/bin/bash

# Create variables
MY_MESSAGE="Hello World"
MY_NUM=100
MY_PI=3.142
MY_ARR=("one" "two" "three" "four" "five")

# Print variables
echo "$MY_MESSAGE"
echo "$MY_NUM"
echo "$MY_PI"
# Print array elements separated by comma and space
echo "${MY_ARR[*]}" 
