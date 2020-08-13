#!/bin/bash -x

echo "Think of a number in range 1 to 100 in your mind"

#initializing values
start=1
end=100
mid=50

#do below continously till break
while true;
do
	#get feedback from user
	echo "press 0 if your number is : "$mid
	echo "press 1 if your number is greater than : "$mid
	echo "press -1 if your number is lesser than : "$mid
	
	#read feedback in value variable
	read value
	case $value in
		#if number is less than mid update end to mid-1
		-1) end=$(($mid-1))
			;;

		#if number is mid the display to the user and end program
		0) echo 'your number found : '$mid
			break;
			;;

		#if number is greater then mid then update start to mid+1
		1) start=$(($mid+1))
			;;
		esac

	#update mid to average of start and end
	mid=$((($start+$end)/2))

done
