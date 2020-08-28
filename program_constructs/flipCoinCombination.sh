#Program to simulate flipping of a coin
echo "Welcome to coin flipping simulator"


#initialize count to 0
count_heads=0
count_tails=0
count_HH=0
count_TT=0
count_HT=0
count_TH=0
head_flip=1
tail_flip=1
max_iterations=20

for((count=0;$count < $max_iterations;count++));
do

	#get random number between 0,1 and check if its 1
	flip1=$(($RANDOM%2))
	flip2=$(($RANDOM%2))

	#get random number between 0,1 and check if its 1
	if(($flip1 == 1 ))
	then
		#if its 1 then increase count of heads
		count_heads=$(($count_heads + 1))
	else
		#else increase tails count by 1
		count_tails=$(($count_tails + 1))
	fi

	# if first and second flip are same
	if(($flip1==$flip2 ))
	then
		#if flip1 is heads
		if (($flip1==$head_flip))
		then
			#if its 1 then increase count of HH
			count_HH=$(($count_HH + 1))
		else
			#else increase count of TT
			count_TT=$(($count_TT + 1))

		fi

	#if first and second flips are different
	else
		#if flip1 is heads
		if(($flip1==$head_flip))
		then
			#if it's 1 increase HT count by 1
			count_HT=$(($count_HT + 1))
	
		else
			#else increase count of TH							
			count_TH=$(($count_TH + 1))
		fi
	fi

done

#display results percentage
echo "Heads percentage : " $(awk '{print ($1*100/($2))}' <<< "${count_heads} ${max_iterations}")
echo "Tails percentage : " $(awk '{print ($1*100/($2))}' <<< "${count_tails} ${max_iterations}")


echo "HH percentage : " $(awk '{print ($1*100/$2)}' <<< "${count_HH} ${max_iterations}")
echo "TT percentage : " $(awk '{print ($1*100/$2)}' <<< "${count_TT} ${max_iterations}")
echo "HT percentage : " $(awk '{print ($1*100/$2)}' <<< "${count_HT} ${max_iterations}")
echo "TH percentage : " $(awk '{print ($1*100/$2)}' <<< "${count_TH} ${max_iterations}")
