#!/bin/bash -x

#function to check palindrome
function palindrome(){
	#store the value from user as input
	input=$1

	#initializee values
	rev=0

	# while num not equals 0
	while [[ $input != 0 ]]
	do

		#get last digit of user entered value
		digit=$(($input%10))

		#multiply reverse number by and add digit 
		rev=$(($rev*10 + $digit))

		#remove the last digit from user entered value
		input=$(($input/10));

	done

	# check if reverse of the number is same as entered number
	if (($1==$rev))
	then 
		echo 'The number is palindrome'
	else
		echo 'The number is not palindrome'
	fi
}



#get number to check is palindrome
read -p "Enter number to check if palindrome and prime" user_value

result="$( palindrome $(($user_value)) )"
