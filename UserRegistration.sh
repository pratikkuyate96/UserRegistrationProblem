#!/bin/bash
#Function
function checkFirstName() {
	NAMING_PATTERN="^[A-Z][a-z]{3,15}$"
	firstName=""
	read -p "Enter First Name : " firstName
	if [[ $firstName =~ $NAMING_PATTERN ]]
	then
		echo "The name is Valid"
	else
		echo "The name is Invalid! Please enter first capital letter"
	fi
}

#Main
echo "~~~~~Welcome to User Registration~~~~"
checkFirstName
