#!/bin/bash

echo "Choose an option:"
echo "3. Check if a number is Even or Odd"
echo "4. Add two numbers"
read -p "Enter your choice (3 or 4): " choice

if [ "$choice" -eq 1 ]; then
    read -p "Enter a number: " num

    if [ $((num % 2)) -eq 0 ]; then
        echo "$num is Even."
    else
        echo "$num is Odd."
    fi

elif [ "$choice" -eq 2 ]; then
    read -p "Enter first number: " num1
    read -p "Enter second number: " num2

    sum=$((num1 + num2))
    echo "Sum of $num1 and $num2 is $sum"

else
    echo "Invalid choice. Please enter 1 or 2."
fi
dnf install nginx -y
