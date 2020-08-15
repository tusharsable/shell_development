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
count=0


#accessing each value of dictionary and saving in array
for x in ${math[@]}
do

	
	#assign new random number to array
	arr[((count++))]=$x
done

# Bubble sort  
for ((i = 0; i<$count; i++)) 
do
      
    for((j = 0; j<$count-i-1; j++)) 
    do
      
        if (( ${arr[j]} < ${arr[$((j+1))]} )) 
        then
            # swap 
            temp=${arr[j]} 
            arr[$j]=${arr[$((j+1))]}   
            arr[$((j+1))]=$temp 
        fi
    done
done
  

echo "Sorted Array :"
echo ${arr[@]} 
