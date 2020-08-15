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

case $count in
#if only one digit then it's unit
	1)
	echo unit
	;;


#if only one digit then it's tens
	2)
	echo tens
	;;

#if only one digit then it's hundreds
	3)
	echo hundreds
	;;

#if only one digit then it's thousands
	4)
	echo thousands
	;;
esac

