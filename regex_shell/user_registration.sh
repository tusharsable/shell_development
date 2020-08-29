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
        exit 0;
fi




#Read User Last Name
read -p "Enter Your Last Name" last_name

#Check Last Name
if [[ $last_name =~ $pat ]]
then
        echo Your Last name is $last_name
else
        echo Please Enter correct name with first capital letter
        exit 0;
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
        exit 0;
fi



#Pattern to check country code 3 digits followed by 10 digit number
pat="^[0-9]{1,3}\ [6-9]{1}[0-9]{9}"

#Read User Mobile number
read -p "Enter Your Mobile Name in format \"country_code<space>10_digit_number\"" mobile_number

#Check mobile number
if [[ $mobile_number =~ $pat ]]
then
        echo Your mobile number is $mobile_number
else
        echo Please Enter correct number
        exit 0;
fi



#Pattern to check password contains atleast 8 characters
pat1="^(.{8,}$)"

#Pattern to check password contains atleast a capital character A-Z
pat2="^.*[A-Z]{1,}.*$"

#Pattern to check password contains atleast a small character a-z
pat3="^.*[a-z]{1,}.*$"

#Pattern to check password contains atleast a number 0-9
pat4="^.*[0-9]{1,}.*$"

#Pattern to check password contains atleast a special character
pat5="^.*[\$\%\^\&\*\_\@\!]{1,}.*$"

#Read User Password
read -p "Enter Password" password

#Check User password
if [[ $password =~ $pat1 ]]
then
	
	if [[ $password =~ $pat2 ]]
	then
		
		if [[ $password =~ $pat3 ]]
		then
			
			if [[ $password =~ $pat4 ]]
			then
				
				if [[ $password =~ $pat5 ]]
				then
				    echo Your password is $password
				
				else
					echo please include special character like .@!_ etc.

				fi

			else
				echo please include a digit 0-9 .
			fi
		
		else
			echo please include a small letter a-z.
		fi
	else
		echo please include a capital letter A-Z.
	fi
else
	echo please length of password should be atleast.	
fi


