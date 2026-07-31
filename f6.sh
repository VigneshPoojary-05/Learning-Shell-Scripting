#!/bin/bash
#Functions 

function equals(){
	if [[ $1 == $2 ]];
	then
		echo "euals"
	else
		echo "not equals"
	fi
}

equals $1 $2
