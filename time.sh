#!/bin/bash

echo "Enter the time:"
read input_time

hour=$(echo $input_time | cut -d':' -f1)

if ! [[ $hour =~ ^[0-9]+$ ]] || (( hour < 0 || hour > 23 )); then
    echo "Please enter a valid hour in 24-hour format."
    exit 1
fi

if (( hour >= 0 && hour <= 6 )); then
    echo "Early morning"
elif (( hour >= 7 && hour <= 12 )); then
    echo "Morning"
elif (( hour >= 13 && hour <= 18 )); then
    echo "Afternoon"
elif (( hour >= 18 && hour <= 23 )); then
    echo "Late night"
fi
