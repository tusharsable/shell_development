#!/bin/bash -x

#turn on external globbing
shopt -s extglob

#Program to register a user
read -p "Enter Your First Name" first_name

#Pattern to check if first letter capital and name length greater than 3
pat="^[[:upper:]]{1}[[:lower:]]{2,}$"


if [[ $first_name =~ $pat ]]
then
	echo correct username
else
	echo wrong username
fi


