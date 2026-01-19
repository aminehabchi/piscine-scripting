#!/bin/bash


curl -s https://learn.zone01oujda.ma/assets/superhero/all.json > file.json

 jq '.. | objects | select(.id? == 1) | {name, power}' file.json




