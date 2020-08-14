#!/bin/bash -x

#get a number from user
read -p "enter a number" number

#initialize count to 0
count=0

#run while till break
while true;
do
	#loop to count number of digits in number
	count=$(($count+1))
	number=$(($number/10))
	if ((number == 0))
	then 
		break;
	fi
done

#if only one digit then it's unit
if (( count == 1 ))
then
	echo unit

#if only one digit then it's tens
elif (( count == 2 ))
then
	echo tens

#if only one digit then it's hundreds
elif (( count == 3 ))
then
	echo hundreds

#if only one digit then it's thousands
elif (( count == 4 ))
then
	echo thousands
fi


