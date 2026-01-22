#!/bin/bash

find . -maxdepth 1 -type f ! -name "*.txt" -printf "%f\n" > filtered_files.txt

