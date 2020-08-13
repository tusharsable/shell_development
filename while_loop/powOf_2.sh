#!/bin/bash -x

#print title of table
echo "Table of power of 2"

#print the column names of table to be printed
echo "n      2^n"

#initialize number num to 0
result=1
x=1

# till x <= 1 do
while [ $x -le $1 ]
do

	#multiply result with 2 and update result 
	result=$((2*$result))

	#if the result is greaeter than 256
	if (($result>256))
	then
		#break the loop
		break;
	fi
	x=$(($x+1))

done
