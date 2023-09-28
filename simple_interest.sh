#!/bin/bash

# This script calculates simple interest

# Prompt the user for the principal amount
read -p "Enter the principal amount: " principal

# Prompt the user for the annual interest rate
read -p "Enter the annual interest rate (as a percentage): " rate

# Prompt the user for the time (in years)
read -p "Enter the time (in years): " time

# Convert the interest rate from percentage to decimal
rate_decimal=$(echo "scale=4; $rate / 100" | bc)

# Calculate simple interest
interest=$(echo "scale=2; $principal * $rate_decimal * $time" | bc)

# Display the result
echo "Simple Interest: $interest"
