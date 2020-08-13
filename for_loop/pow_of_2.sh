#!/bin/bash -x

#print title of table
echo "Table of power of 2"

#print the column names of table to be printed
echo "n      2^n"

#initialize number num to 0
num=1
for ((x=1;x<=$1;x++));do

	#multiply num with 2
	num=$((2*$num))
	#print nth power of 2
	echo $x'	'$num


done
