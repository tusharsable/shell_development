#!/bin/bash -x

#for the range recieved run for loop
for((num=$1;num<=$2;num++));do
	flag=0
		#find if number is prime if not raise flag=1
		for ((x=2;$((x*x))<=num;x++));do

			if [ $((num%x)) == 0 ]
			then
				flag=1
				break;
			fi
		done
	#if flag equals 0 then the number is prime
	if [ $flag == 0 ]
	then
		#print number
		echo $num
	fi

done

