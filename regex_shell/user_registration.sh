#!/bin/bash -x

#turn on external globbing
shopt -s extglob

#Program to register a user


#Pattern to check if first letter capital and name length greater than 3
pat="^[[:upper:]]{1}[[:lower:]]{2,}$"

#Read User First Name
read -p "Enter Your First Name" first_name

#Check First Name
if [[ $first_name =~ $pat ]]
then
	echo Your First name is $first_name
else
	echo Please Enter your name with first letter capital
fi


#Read User Last Name
read -p "Enter Your Last Name" last_name

#Check Last Name
if [[ $last_name =~ $pat ]]
then
	echo Your Last name is $last_name
else
	echo Please Enter correct name with first capital letter
fi

