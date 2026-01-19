#!/bin/bash

find . -type f -name "*.txt" | while read file; do
    name=$(basename "$file" .txt)
    echo "${name}"
done
