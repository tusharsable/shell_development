#!
#initialize array to be analyzed
arr=(0 -1 2 -3 1)

#display array to user
echo ${arr[@]}

#initialize size of array as n
n=5

#make pairs of triplets to be checked if sum is zero

#STart from first element and iterate till third last
for ((i=0;i<$(($n-2));i=$(($i+1))))
do
	
	# start from second element till second last element
	for (( j=$(($i+1));j<$(($n-1));j=$(($j+1)) ))
	do
		#start from third  till last element
		for (( k=$(($j+1));$k<n;k=$(($k+1)) ))
		do
			#check if triple sum equals zero
			if (( $((${arr[i]}+${arr[j]}+${arr[k]})) == 0 ))
			then
				# display triplets if sum is zero
				echo "( "${arr[i]},${arr[j]},${arr[k]}" )"
			fi
		done
	done

done

