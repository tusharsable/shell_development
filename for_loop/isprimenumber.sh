#!/bin/bash -x

# initialize flag to 0
flag=0

#run for loop 
for ((x=2;$((x*x))<$1;x++));do

	#check if given number is divisible by any number
	if [ $(($1%x)) -eq 0 ]
	then 
		# if divisible raise flag=1 and break the loop
		flag=1
		break;
	fi
done

#if flag equals 1 then the number is not prime
if [ $flag -eq 1 ]
then
	echo 'the number is not prime'
else
	#else the number is prime
	echo 'the number is prime'
fi





