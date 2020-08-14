#!/bin/bash -x
#for numbers from 2 till the number whose prime factors 
#we want to find
arr=()
for((num=2;num<=$1;num++));do
	
		#if num is a factor of number
		if [ $(($1%$num)) -eq 0 ]
		then
			#initialize flag
			flag=0
			#find if its a prime number
			for ((x=2;$((x*x))<=$num;x++));do

				if [ $(($num%x)) -eq 0 ]
				then
					flag=1
					break;
				fi
			done

			#if its a prime number
			if [ $flag -eq 0 ]
			then
				#then append the number
				arr[((counter++))]=$(($num))
			fi
		fi
done

echo "The prime factors of numbers entered are : "${arr[@]}
