#!/bin/bash -x

#function to check prime
function prime() {
	# initialize flag to 0
	flag=0

	#run for loop 
	for ((x=2;$((x*x))<=$1;x++));do

		#check if given number is divisible by any number
		if [ $(($1%x)) -eq 0 ]
		then 
			# if divisible raise flag=1 and break the loop
			flag=1
			break;
		fi
	done

	#if flag equals 1 then the number is not prime
	if [ $flag -eq 1 ]
	then
		echo 'the number is not prime'
	else
		#else the number is prime
		echo 'the number is prime'
	fi

}

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
result="$( prime $(($user_value)) )"
