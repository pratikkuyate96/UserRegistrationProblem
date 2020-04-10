#!/bin/bash

#Function check first name
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

#Function check last name
function checkLastName() {
	NAMING_PATTERN="^[A-Z][a-z]{3,15}$"
	lastName=""
	read -p "Ënter Last Name : " lastName
	if [[ $lastName =~ $NAMING_PATTERN ]]
	then
		echo "The last name is Valid"
	else
		echo "The last name is Invalid"
	fi
}

#Main
echo "~~~~~Welcome to User Registration~~~~"
checkFirstName
checkLastName
