#!/bin/bash -x

#initialize variables
counter=0
arr[((counter++))]=$(($RANDOM%1000))
max=${arr[0]}
min=${arr[0]}
second_max=$max
second_min=$min

while [[ true ]];
do

	number=$(($RANDOM%1000))

	#assign new random number to array
	arr[((counter++))]=$number

	#if this number is greater than previous max then
	if(($number>=$max))
	then

		#current max is second max and current number is current max
		second_max=$max
		max=$number

	fi

	if((number<$min))
	then

		#current max is second max and current number is current max
		second_min=$min
		min=$number
	fi
	
	if (($counter>=10))
	then
		break;
	fi

done

#Display results on screen
echo "Second smallest number inn array is : " $second_min

echo "Second largest number in array is : " $second_max
