#!/bin/bash -x

#initialize variable fact
fact=1

for ((x=2;x<=$1;x++));do
	
	#multipy fact with number from 2 to argument passed
	fact=$(($fact*$x))
done

#print factorial on screen
echo 'the factorial of '$1' is : '$fact\









