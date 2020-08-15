#!/bin/bash -x

#Prgram to simulate flipping of a coin
echo "Welcome to coin flipping simulator"

#initialize count to 0
count_heads=0
count_tails=0
while true;
do

#get random number between 0,1 and check if its 1
if(($(($RANDOM%2)) == 1 ))
then
	#if its 1 then incrase count of heads
	count_heads=$(($count_heads + 1))
else
	#else increase tails count by 1
	count_tails=$(($count_tails + 1))
fi

#if count of tails reaches 21
if (($count_tails == 21))
then
	#then display that tails won x times
	echo 'tails won by'$(($count_tails-$count_heads)) 'times'
	break;
fi

#if count of heads reaches 21 
if (($count_heads == 21))
then
	#then display heads won 21 times
	echo 'heads won by'$(($count_tails-$count_heads)) 'times'
	break;
fi

done


