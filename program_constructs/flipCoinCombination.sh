#Program to simulate flipping of a coin
echo "Welcome to coin flipping simulator"


#initialize count to 0
head_flip=1
tail_flip=1
max_iterations=20

#initialize for singlet
count_heads=0
count_tails=0

#initialize for doublet
count_HH=0
count_TT=0
count_HT=0
count_TH=0

#initialize for triplet
count_HHH=0
count_HHT=0
count_HTH=0
count_HTT=0
count_THH=0
count_THT=0
count_TTH=0
count_TTT=0

for((count=0;$count < $max_iterations;count++));
do

	#get random number between 0,1 and check if its 1
	flip1=$(($RANDOM%2))
	flip2=$(($RANDOM%2))
	flip3=$(($RANDOM%2))

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

			if(($flip3==head_flip))
			then
				count_HHH=$(($count_HHH + 1))
			else
				count_HHT=$(($count_HHT + 1))
			fi

		else
			#else increase count of TT
			count_TT=$(($count_TT + 1))
			
			#check if flip3 is head
			if(($flip3==head_flip))
			then
				count_TTH=$(($count_TTH + 1))
			else
				count_TTT=$(($count_TTT + 1))
			fi
		fi

	#if first and second flips are different
	else
		#if flip1 is heads
		if(($flip1==$head_flip))
		then
			#if it's 1 increase HT count by 1
			count_HT=$(($count_HT + 1))

			#check if third is head
			if(($flip3==head_flip))
			then
				count_HTH=$(($count_HTH + 1))
			else
				count_HTT=$(($count_HTT + 1))
			fi
		else
			#else increase count of TH							
			count_TH=$(($count_TH + 1))


			#check if third is head
			if(($flip3==head_flip))
			then
				count_THH=$(($count_THH + 1))
			else
				count_THT=$(($count_THT + 1))
			fi
		fi
	fi

done

#display results percentage
echo "Heads percentage : " $(awk '{print ($1*100/$2)}' <<< "${count_heads} ${max_iterations}")
echo "Tails percentage : " $(awk '{print ($1*100/$2)}' <<< "${count_tails} ${max_iterations}")


echo "HH percentage : " $(awk '{print ($1*100/$2)}' <<< "${count_HH} ${max_iterations}")
echo "TT percentage : " $(awk '{print ($1*100/$2)}' <<< "${count_TT} ${max_iterations}")
echo "HT percentage : " $(awk '{print ($1*100/$2)}' <<< "${count_HT} ${max_iterations}")
echo "TH percentage : " $(awk '{print ($1*100/$2)}' <<< "${count_TH} ${max_iterations}")

echo "HHH percentage : " $(awk '{print ($1*100/(2*$2))}' <<< "${count_HH} ${max_iterations}")
echo "HHT percentage : " $(awk '{print ($1*100/(2*$2))}' <<< "${count_TT} ${max_iterations}")
echo "HTH percentage : " $(awk '{print ($1*100/(2*$2))}' <<< "${count_HT} ${max_iterations}")
echo "HTT percentage : " $(awk '{print ($1*100/(2*$2))}' <<< "${count_TH} ${max_iterations}")
echo "THH percentage : " $(awk '{print ($1*100/(2*$2))}' <<< "${count_HH} ${max_iterations}")
echo "THT percentage : " $(awk '{print ($1*100/(2*$2))}' <<< "${count_TT} ${max_iterations}")
echo "TTH percentage : " $(awk '{print ($1*100/(2*$2))}' <<< "${count_HT} ${max_iterations}")
echo "TTT percentage : " $(awk '{print ($1*100/(2*$2))}' <<< "${count_TH} ${max_iterations}")
