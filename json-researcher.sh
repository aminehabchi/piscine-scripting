#!/bin/bash


curl -s https://learn.zone01oujda.ma/assets/superhero/all.json > file.json

 jq '.. | objects | select(.id? == 1) | {name:.name, power : .powerstats.power}' file.json




