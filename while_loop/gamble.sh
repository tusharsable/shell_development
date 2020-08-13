
#!/bin/bash -x

#initialize variables to 0
count_win=0
count_lose=0

#add 100 rs to wallet
money=100

#till we break out do
while true;
do

#check it random number generated leads for person to win
if(($(($RANDOM%2)) == 1 ))
then
	#if her wins then increase count of 
	#win and money by 1 each
	count_win=$(($count_win + 1))
	money=$(($money + 1))
else
	#else our lose count increases by 1
	count0=$(($count0 + 1))
	#money decreases by 1
	money=$(($money-1))
fi

#check if we completed our target of 200 rupees
if (($money == 200))
then
	# display we won 200 rupees
	echo 'We won 200 rupees'
	break;
fi

#check if any money left to bet
if (($money == 0))
then
	#display we left with no money to bet 
	#please add more to your wallet
	echo 'We lost all our money'
	echo 'Please add more to your wallet'
	break;
fi

done

