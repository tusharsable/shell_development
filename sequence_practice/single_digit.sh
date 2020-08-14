#!/bin/bash -x

#PROGRAM TO GENERATE SINGLE DIGIT RANDOM  NUMBER

echo $(($RANDOM%10))

# command to get Dice number between 1 to 6

echo $(($RANDOM%7))

#adding two random dice numbers

echo $(($RANDOM%7 + $RANDOM%7))

#program which finds sum and average of random 
sum=0
for i in `seq 5`
do 
	sum=$(($sum + $RANDOM%100))
	
done
echo "sum of 5 random numbers is : "$sum
echo "average of 5 random numbers is : "$(awk '{print $1/5.0}' <<< "${sum}")
