#!/bin/bash -x

# for each number between 1 and 100 do
for x in {1..100}
do
	#create a copy for use of x
	number=$x

	#get first digit
	digit1=$(($number%10))
	
	#get second digit
	number=$(($number/10))
	digit2=$(($number%10))

	# if both digits are same then add this number to array
	if (($digit1 == $digit2))
	then 
		arr[((counter++))]=$x
	fi
done

#print the resultant array
echo ${arr[@]}
