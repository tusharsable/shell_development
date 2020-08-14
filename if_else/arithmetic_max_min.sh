#!/bin/bash -x

#get 3 numbers to evaluate mathematical expressions
read -p "enter 3 numbers" a b c

#evaluate math expressions and store in respective variables
math_1=$((a+b*c))
math_2=$((a%b+c))
math_3=$((c+a/b))
math_4=$((a*b+c))


#To find the largest of first 3 numbers
#check if number 1 greater than number 2
if (( $math_1>$math_2 ))
then 
	#check if number 1 greater than number 3
	if (( $math_1>$math_3 ))
	then 
		#num1 will be max as we compared it with remaining numbers
		max=$math_1
	else
		#As num 1 is greater than num2 and num3 greater than num1 
		#therefore num 3 is greatest of all
		max=$math_3

	fi

#if  num2>num1 check is num2>num3
elif (( $math_2>$math_3 ))
then
	#then num2 is greatest of all
	max=$math_2
else
	#num3 is maximum
	max=$math_3
fi

#To find the largest of the largest of 3 and  and fourth
if (( $math_4 > max ))
then 
	max=$math_4
fi
echo "max number is : "$max





#To find the smallest of first 3 numbers

#check if num1<num2
if (( $math_1<$math_2 ))
then 
	#check num1<num3
	if (( $math_1<$math_3 ))
	then 
		
		#as num1<num2 and num1<num3 num1 is minimum
		min=$math_1
	else
		#as num1<num2 and num3<num1<num2 hence num3 is min
		min=$math_3
	fi

#as num2<num1 check math_2<math_3
elif (( $math_2<$math_3 ))
then
	#as num2<num1 and num2<num3 ,num2 is min
	min=$math_2
else
	#as num2<num1 and num3<num2, hum3 is min
	min=$math_3
fi

#To find the largest of the largest of 3 and  and fourth
if (( $math_4 < min ))
then 
	min=math_4
fi
echo "min is "$min
