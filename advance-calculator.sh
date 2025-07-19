#!/bin/bash

echo "Welcome to Happy's Advanced Calculator 🧮 (with bc)"

# User input
echo -n "Enter first number: "
read num1

echo -n "Enter second number: "
read num2

echo -n "Enter operation (+, -, *, /): "
read op

echo "Testing minor update"

# Validate division by zero
if [[ "$op" == "/" && "$num2" == "0" ]]; then
  echo "Error: Division by zero ❌"
  exit 1
fi

# Use bc for decimal calculation
result=$(echo "scale=2; $num1 $op $num2" | bc)

echo "Result: $result ✅"


