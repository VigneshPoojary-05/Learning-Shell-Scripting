#!/bin/bash

echo "======================"
echo "Login Validation"
echo "======================"

username="vignesh@123"
password="vv123"

read -p "Enter Username: " un
read -s -p "Enter Password: " psw
echo
echo

if [[ "$un" == "$username" && "$psw"=="$password" ]]
then
	echo "Login Sucessfull"
else
	echo "Access Denied, Invalid Credentials"
fi
