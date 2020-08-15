#!/bin/bash -x

# command to get Dice number between 1 to 6

declare -A dice
dice[one]=0
dice[two]=0
dice[three]=0
dice[four]=0
dice[five]=0
dice[six]=0
while true;
do

	new_trial=$(($RANDOM%6 + 1))

	case $new_trial in
	1)
		dice[one]=$((${dice[one]}+1))
		if ((dice[one]==10))
		then
			max="one"
			break 
		fi
		;;

	2)
		dice[two]=$((${dice[two]}+1))
		if ((dice[two]==10))
		then
			max="two"
			break
		fi
		;;

	3)
		dice[three]=$((${dice[three]}+1))
		if ((dice[three]==10))
		then
			max="three"
			break

		fi
		;;

	4)
		dice[four]=$((${dice[four]}+1))
		if ((dice[four]==10))
		then
			max="four"
			break

		fi
		;;

	5)
		dice[five]=$((${dice[five]}+1))
		if ((dice[five]==10))
		then
			max="five"
			break
		fi
		;;

	6)
		dice[six]=$((${dice[six]}+1))
		if ((dice[six]==10))
		then
			max="six"
			break
		fi
		;;
esac

done

echo $max
