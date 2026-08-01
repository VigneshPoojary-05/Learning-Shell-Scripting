#!/bin/bash

read -p "Enter value for num1: " num1
read -p "Enter value for num2: " num2
echo

echo "======== ANSWER ========"
echo "Addition       : $((num1 + num2))"
echo

echo "Subtraction    : $((num1 - num2))"
echo

echo "Multiplication : $((num1 * num2))"
echo

echo "Division       : $((num1 / num2))"
echo

echo "Remainder      : $((num1 % num2))"
echo

echo "Power          : $((num1 ** 2))"
echo
echo "Operation Edded Successfully"
