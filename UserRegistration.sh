#!/bin/bash

#Function to check first name valid or not
function checkFirstName() {
	NAMING_PATTERN="^[A-Z][a-z]{3}$"
	firstName=""
	read -p "Enter First Name : " firstName
	if [[ $firstName =~ $NAMING_PATTERN ]]
	then
		echo "The name is Valid"
	else
		echo "The name is Invalid! Please enter first capital letter"
	fi
}

#Function to check last name valid or not
function checkLastName() {
	NAMING_PATTERN="^[A-Z][a-z]{3}$"
	lastName=""
	read -p "Ënter Last Name : " lastName
	if [[ $lastName =~ $NAMING_PATTERN ]]
	then
		echo "The last name is Valid"
	else
		echo "The last name is Invalid"
	fi
}

#Function to check Email Id valid or not
function checkEmailId {
	EMAIL_ID_PATTERN="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$"
	emailId=""
	read -p "Enter Email Id : " emailId
	if [[ $emailId =~ $EMAIL_ID_PATTERN ]]
	then
		echo "The email id is valid "
	else
		echo "The email id is invalid"
	fi
}

#Main
echo "~~~~~Welcome to User Registration~~~~"
checkFirstName
checkLastName
checkEmailId
