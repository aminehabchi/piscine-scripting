#!/bin/bash

if [ "$#" -lt 3 ]; then
    echo "Error: expect 3 arguments"
    exit 1
fi


if ! [[ $1 =~ ^-?[0-9]+$ ]]; then
    echo "Error: invalid number"
    exit 4
fi

if ! [[ $3 =~ ^-?[0-9]+$ ]]; then
    echo "Error: invalid number"
    exit 4
fi

do_add(){
    echo $(($1 + $2))
}

do_sub(){
    echo $(($1 - $2))
}

do_mult(){
    echo $(($1 * $2))
}

do_divide(){
    if (( $2 == 0 )); then 
        echo "Error: division by 0"
        exit 1
    fi
    echo $(($1 / $2))
}



if [ "$2" = "*" ]; then
    do_mult "$1" "$3"
elif [ "$2" = "+" ]; then
    do_add "$1" "$3"
elif [ "$2" = "/" ]; then
    do_divide "$1" "$3"
elif [ "$2" = "-" ]; then
    do_sub "$1" "$3"
else
    echo "Error: invalid operator"
    exit 3
fi

