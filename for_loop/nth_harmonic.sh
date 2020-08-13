#!/bin/bash -x

#initialize harmonic =1
har=1

#run for loop from 2 to the number passed
for ((x=2;x<=$1;x++));do
	
	#harmonic = harmonic +1/x
	har=$(awk '{print $1 +(1/$2)}' <<< "${har} ${x}")

done
#thus we get the sum and display it below
echo $har








