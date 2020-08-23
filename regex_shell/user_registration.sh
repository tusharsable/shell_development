#!/bin/bash -x

#turn on external globbing
shopt -s extglob

#Program to register a user


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
