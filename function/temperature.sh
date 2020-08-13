#!/bin/bash -x

#function to convert celsius to fahrenheit
function celsius_to_fah() {
degc=$1
degf=$(awk '{print ($1*(9.0/5)+32)}' <<< "${degc}")
echo $degf
}

#function to convert fahrenheit to celsius
function fah_to_celsius() {
degf=$1
degc=$(awk '{print ($1-32)*5.0/9}' <<< "${degf}")
echo $degc
}



#display menu to user
echo "Enter 1 for fahrenheit to celsius conversion"
echo "Enter 2 for celsius to fahrenheit conversion"
read user_key
read -p "enter value to convert" user_value
if(($user_key == 1))
then
	#convert value by calling function and print result
	result=$( fah_to_celsius $((user_value)) )

	echo "the temperature in celsius is : "$result

else
	#convert value by calling function and print result
	result=$( celsius_to_fah $((user_value)) )

	echo "the temperature in fahrenheit is : "$result

fi

