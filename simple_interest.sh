#!/bin/bash

# Script to calculate Simple Interest

# Function to calculate simple interest
calculate_simple_interest() {
    principal=$1
    rate=$2
    time=$3

    # Formula: Simple Interest = (Principal * Rate * Time) / 100
    simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)
    echo "The Simple Interest is: $simple_interest"
}

# Prompt user for inputs
echo "Welcome to the Simple Interest Calculator!"
read -p "Enter the Principal amount: " principal
read -p "Enter the Annual Interest Rate (in %): " rate
read -p "Enter the Time (in years): " time

# Validate inputs
if [[ ! $principal =~ ^[0-9]+([.][0-9]+)?$ || ! $rate =~ ^[0-9]+([.][0-9]+)?$ || ! $time =~ ^[0-9]+([.][0-9]+)?$ ]]; then
    echo "Error: Please enter valid numerical values for Principal, Rate, and Time."
    exit 1
fi

# Call the function to calculate simple interest
calculate_simple_interest $principal $rate $time
