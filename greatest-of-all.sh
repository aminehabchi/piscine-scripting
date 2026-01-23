#!/bin/bash

read_number() {
    local prompt="$1"
    local num
    while true; do
        echo -n "$prompt"
        read -r num

        if [[ ! $num =~ ^[0-9]+$ ]]; then
            echo "ERROR: Invalid input. Only positive numerical characters are allowed."
            exit 1
        fi

        if [[ $num -gt 10000 ]]; then
            echo "ERROR: The number entered is too large."
            exit 1
        fi

        echo "$num"
        return
    done
}


numbers=()


for ((i=1; i<=10; i++)); do
    numbers+=("$(read_number "Enter number #$i: ")")
done


max="${numbers[0]}"
for num in "${numbers[@]}"; do
    if [[ $num -gt $max ]]; then
        max="$num"
    fi
done

echo "The largest number is: $max"
