#!/bin/bash

echo "=========================="
echo " SIMPLE CALCULATOR "
echo "=========================="

read -p "Enter value for Number 1: " num1
read -p "Enter value for Number 2: " num2
echo

echo "Choose Operation"
echo "------------------"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
echo "5. Modulus"
echo "6. Exit"
echo "------------------"
echo

read -p "Enter Your Choice: " ch
echo

case $ch in

1)
    result=$((num1 + num2))
    ;;

2)
    result=$((num1 - num2))
    ;;

3)
    result=$((num1 * num2))
    ;;

4)

    if [ "$num2" -eq 0 ]
    then
        echo "Division by zero is not allowed."
        exit 1
    fi

    result=$((num1 / num2))
    ;;

5)

    if [ "$num2" -eq 0 ]
    then
        echo "Division by zero is not allowed."
        exit 1
    fi

    result=$((num1 % num2))
    ;;

6)

    echo "Exit"

    exit 1
    ;;
esac

echo
echo "Result = $result"
