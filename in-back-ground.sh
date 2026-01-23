#!/bin/bash

nohup bash -c '
line=$(cat facts | grep "moon")
if [ -n "$line" ]; then
    echo "$line"          # print matching line to stdout
    echo "The moon fact was found!" >> output.txt
fi
' &
