#!/bin/bash -x

#initialize variables
counter=0

#get array of random numbers
while [[ true ]];
do

	number=$(($RANDOM%1000))

	#assign new random number to array
	arr[((counter++))]=$number
	if (($counter>=10))
	then
		break;
	fi

done


# Bubble sort  
for ((i = 0; i<$counter; i++)) 
do
      
    for((j = 0; j<$counter-i-1; j++)) 
    do
      
        if (( ${arr[j]} > ${arr[$((j+1))]} )) 
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

echo "Second smallest number inn array is : " ${arr[1]}
echo "Second largest number in array is : " ${arr[$(($counter-2))]}
