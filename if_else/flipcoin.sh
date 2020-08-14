#!/bin/bash -x

#get random number between 0,1 and check if its 1
if(($(($RANDOM%2)) == 1 ))
then
	#if its 1 then print heads
	echo Heads
else
	#else print tails
	echo Tails
fi


