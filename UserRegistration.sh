#!/bin/bash

#Function to check first name valid or not
function checkFirstName() {
	NAMING_PATTERN="^[A-Z][a-z]{3,}$"
	firstName=""
	read -p "Enter First Name : " firstName
	if [[ $firstName =~ $NAMING_PATTERN ]]
	then
		echo "The name is Valid"
	else
		echo "The name is Invalid!"
		echo "Please enter first capital letter"
	fi
}

#Function to check last name valid or not
function checkLastName() {
	NAMING_PATTERN="^[A-Z][a-z]{3,}$"
	lastName=""
	read -p "Ënter Last Name : " lastName
	if [[ $lastName =~ $NAMING_PATTERN ]]
	then
		echo "The last name is Valid"
	else
		echo "The last name is Invalid"
		echo "Please enter first capital letter"
	fi
}

#Function to check Mobile number valid or not
function checkMobileNumber {
	MOBILE_NO_PATTERN="^[0-9]{2}[ ][6-9]{1}[0-9]{9}$"
	mobileNumber=""
	read -p "Enter your mobile number : " mobileNumber
	if [[ $mobileNumber =~ $MOBILE_NO_PATTERN ]]
	then
		echo "The mobile number is valid"
	else
		echo "The mobile number is invalid"
	fi
}

#Function to check Email Id valid or not
function checkEmailId {
	EMAIL_ID_PATTERN="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$"
	emailId=""
	read -p "Enter Email Id : " emailId
	if [[ $emailId =~ $EMAIL_ID_PATTERN ]]
	then
		echo "The email id is Valid "
	else
		echo "The email id is Invalid"
	fi
}

#Function to check Password valid or not
function checkPassword {
	#Rule1: To checked minimum 8 character
	PASSWORD_PATTERN1="[a-z]{8,}$"

	#Rule2: To checked at least one upper case
	PASSWORD_PATTERN2="^[a-z][A-Z]{8,}$"

	#Rule3: To checked at least one numeric number
	PASSWORD_PATTERN3="^[a-zA-Z0-9]{8,}$"

	#Rule4: To checked exactly one special character
	PASSWORD_PATTERN4="^[A-Za-z0-9]{1,}[a-zA-Z0-9]{8,}[!@#$%^&*-]{1}[a-zA-Z0-9]{1,}$"
	password=""
	echo "NOTE:-"
	echo "Password must include at least 8 characters"
	echo "Password must include at least one uppercase letter"
	echo "Password must include at least one digit from 0 to 9"
	echo "Password must include exactly one special character"
	read -p "Enter password : " password
	if [[ $password =~ $PASSWORD_PATTERN4 ]]
	then
		echo "The password is Valid"
	else
		echo "The password is Invalid!"
		echo "Please follow NOTE and enter valid password"
	fi
}

#Main
echo "~~~~~Welcome to User Registration~~~~"
checkFirstName
checkLastName
checkMobileNumber
checkEmailId
checkPassword
