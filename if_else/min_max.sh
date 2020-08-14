#!/bin/bash -x

#create three random 3 digit numbers
num1=$(($RANDOM%1000))
num2=$(($RANDOM%1000))
num3=$(($RANDOM%1000))

#check if number 1 greater than number 2
if (( $num1>$num2 ))
then 
	#check if number 1 greater than number 3
	if (( $num1>$num3 ))
	then 
		#num1 will be max as we compared it with remaining numbers
		echo "max number is : "$num1
	else
		#As num 1 is greater than num2 and num3 greater than num1 
		#therefore num 3 is greatest of all
		echo "max number is : "$num3

	fi

#if  num2>num1 check is num2>num3
elif (( $num2>$num3 ))
then
	#then num2 is greatest of all
	echo "max number is : "$num2
else
	#num3 is maximum
	echo "max number is : "$num3
fi


#check if num1<num2
if (( $num1<$num2 ))
then 
	#check num1<num3
	if (( $num1<$num3 ))
	then 
		
		#as num1<num2 and num1<num3 num1 is minimum
		echo "min number is : "$num1
	else
		#as num1<num2 and num3<num1<num2 hence num3 is min
		echo "min number is : "$num3
	fi

#as num2<num1 check num2<num3
elif (( $num2<$num3 ))
then
	#as num2<num1 and num2<num3 ,num2 is min
	echo "min number is : "$num2
else
	#as num2<num1 and num3<num2, hum3 is min
	echo "min number is : "$num3
fi


