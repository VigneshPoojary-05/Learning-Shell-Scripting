#!/bin/bash

#Basics of Bash

<<comment
<< This is used for a
multi line comments
comment

#variable
Name="Vignesh Poojary"
echo "My name is $Name and Todays date is $(date)"

#User Input
<<c echo "Enter Your Name:"
read username
echo "Your name is: $username"
c

read -p "Enter Username: " username
echo "Username is $username"
echo "New User Added Sucessfully"

#Arguments
echo "Character in $0 $1 $2"
