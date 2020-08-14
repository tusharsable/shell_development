#!/bin/bash -x

#read number from user
read -p "Enter day number of a week" number

#check case in check and print appropriate day
case $number in

	1)
	echo "Sunday"
	;;

	2)
	echo "Monday"
	;;

	3)
	echo "Tuesday"
	;;


	4)
	echo "Wednesday"
	;;

	5)
	echo "Thursday"
	;;
	
	6)
	echo "Friday"
	;;

	7)
	echo "Saturday"
	;;
esac
