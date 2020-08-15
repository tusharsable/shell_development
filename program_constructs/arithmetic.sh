#!/bin/bash -x

#program to evaluate mathematical expressions
echo "Welcome to arithmetic program for computation"


#get 3 numbers to evaluate mathematical expressions
read -p "enter 3 numbers" a b c


#evaluate math expressions and store in respective variables
declare -A math

math[1]=$((a+b*c))
math[2]=$((a%b+c))
math[3]=$((c+a/b))
math[4]=$((a*b+c))
count1=0
count2=0

for x in ${math[@]}
do

	
	#assign new random number to array
	arr[((count1++))]=$x
done

echo ${arr[@]}
