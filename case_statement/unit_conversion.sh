#!/bin/bash -x

#Display menu to user
echo "Enter \"1\" for Feet to Inch conversion"
echo "Enter \"2\" for Feet to Meter conversion"
echo "Enter \"3\" for Inch to Meter conversion"
echo "Enter \"4\" for Meter to Feet conversion"

#Get choise from user
read user_choice

#Get value to convert from user
read -p "Enter number for conversion" value

case $user_choice in

	1)
		# One Feet equals 12 inches so multiply by 12
		result=$(awk '{print ($1*12)}' <<< "${value}")
		;;

	2)
		# One meter equals 3.281 feet so divide by 3.281
		result=$(awk '{print ($1/3.281)}' <<< "${value}")
		;;

	3)
		# Twelve Inches equals 1 feet so divide by 12
		result=$(awk '{print ($1/12)}' <<< "${value}")
		;;

	4)
		# One meter equals 3.281 feet so mltiply by 3.281
		result=$(awk '{print ($1*3.281)}' <<< "${value}")
		;;

esac 

echo "The value after successful conversion is : "$result
