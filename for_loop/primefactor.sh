
#for numbers from 2 till the number whose prime factors 
#we want to find
for((num=2;num<=$1;num++));do
	
		#if num is a factor of number
		if [ $(($1%$num)) -eq 0 ]
		then
			#initialize flag
			flag=0
			#find if its a prime number
			for ((x=2;$((x*x))<num;x++));do

				if [ $((num%x)) -eq 0 ]
				then
					flag=1
					break;
				fi
			done

			#if its a prime number
			if [ $flag -eq 0 ]
			then
				#then print the number
				echo $num
			fi
		fi
done

