#!/bin/bash

password="linux123"

until [ "$input" = "$password" ]
do
	read -p "Enter Password: " input
    if [ "$input" != "$password" ]
    then
        echo "Wrong Password"
    fi
done

echo "Access Granted"
