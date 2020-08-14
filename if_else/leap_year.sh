#!/bin/bash -x

#get year from user
read -p "enter a year to check if leap year" year

#check if year not divisible by 1000
if (( $year%1000 != 0 ))
then
	#check if year divisible by 4
	if(( $year%4 == 0 ))
	then
		#check if year not divisible by 100
		if(( $year%100 != 0))
		then
			echo $year" is an leap year"
			exit 1
		fi
	fi

elif(( $year%400 == 0 ))
then
	echo $year" is an leap year"
	else
	echo $year" is not a leap year"
fi


