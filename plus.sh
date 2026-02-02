#!/bin/sh

if [ "$#" -ne 2 ]; then
    exit 1
fi

expr "$1" + "$2"
