#!/bin/bash


json=$(curl -s https://learn.zone01oujda.ma/assets/superhero/all.json)


echo "$json" | jq '.[] | select(.id==1) | {name, power}'