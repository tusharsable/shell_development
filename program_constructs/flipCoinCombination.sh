#Program to simulate flipping of a coin
echo "Welcome to coin flipping simulator"

#initialize count to 0
count_heads=0
count_tails=0


for((count=0;count<20;count++))
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


done

echo "Heads percentage : " $(awk '{print ($1*100/($1+$2))}' <<< "${count_heads} ${count_tails}")


echo "Tails percentage : " $(awk '{print ($1*100/($1+$2))}' <<< "${count_tails} ${count_heads}")
