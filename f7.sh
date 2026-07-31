#!/bin/bash

create_directory(){
	mkdir demo
}

if ! create_directory; then
	echo "somthing error..."
	exit 1
fi

echo "code is interrupted"
