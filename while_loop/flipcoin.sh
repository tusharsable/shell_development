#!/bin/bash -x

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

#if count of tails reaches 11
if (($count_tails == 11))
then
	#then display that tails won 11 times
	echo 'tails won 11 times'
	break;
fi

#if count of heads reaches 11 
if (($count_heads == 11))
then
	#then display heads won 11 times
	echo 'heads won 11 times'
	break;
fi

done

