#!/bin/bash

code_clone(){

	echo "Cloning the code....."
	git clone https://github.com/VigneshPoojary-05/Hotel-Management-System.git
} 

install_req(){
	echo "Installing dependencies"
	sudo apt-get install apache2 mysql-server php libapache2-mod-php php-mysql phpmyadmin php-mbstring php-zip php-gd php-json php-curl -y
}

required_restart(){
	sudo systemctl enable apache2
	sudo systemctl enable mysql
	sudo systemctl start apache2
	sudo systemctl start mysql
}

deploy(){
	echo "Deploying Hotel Management System..."
    	sudo cp -r Hotel-Management-System/* /var/www/html/
	sudo systemctl restart apache2
}

# Call the functions
echo "******* Deploying Started ***********"

if ! code_clone; then
	echo "code directory already exist"
fi

if ! install_req; then
	echo "Installation failed"
	exit 1
fi

if ! required_restart; then
	echo "restart failed"
	exit 1
fi

if ! deploy; then
	echo"Depoly failed"
	exit 1
fi

echo "******* Deploying Ended ***********"

