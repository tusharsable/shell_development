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

#read Email from user
read -p "Enter your E-mail Id" email

#Pattern for email
pat_email="^[a-z]{1,}[a-z0-9\.\_\-]*[a-z0-9](\@[a-z]{3,})\.([a-z]{2,}|[a-z]{2,}\.[a-z]{2,})$"


#Check email
if [[ $email =~ $pat_email ]]
then
	echo Your E-mail Id  is $email
else
	echo Please Enter correct E-mail Id
fi
