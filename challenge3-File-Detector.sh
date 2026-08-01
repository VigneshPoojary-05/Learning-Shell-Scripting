#!/bin/bash

read -p "Enter File name with extenstion: " file

case $file in
*.log)
	echo "Log File"
	;;
*.txt)
	echo "Text file"
	;;
*.sh)
	echo "shell script file"
	;;
*)
	echo "invalid"
	exit
esac
