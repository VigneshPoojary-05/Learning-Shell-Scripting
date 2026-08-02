#!/bin/bash

var="YES"

until [ "$inp" = "$var" ]
do
	read -p "Enter: " inp

	if [ "$inp" != "$var" ]
	then
		echo "Please Enter Yes"
	fi
done

echo "You Enter Correctly"
