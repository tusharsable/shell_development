#!/bin/bash -x

# command to get month number between jan to dec

declare -A month
month[jan]=0
month[feb]=0
month[march]=0
month[april]=0
month[may]=0
month[june]=0
month[july]=0
month[august]=0
month[september]=0
month[november]=0
month[december]=0


for ((x=0;x<=50;x++))
do

	new_trial=$(($RANDOM%12 + 1))

	case $new_trial in
	1)
		month[january]=$((${month[january]}+1))

		;;

	2)
		month[february]=$((${month[february]}+1))

		;;

	3)
		month[march]=$((${month[march]}+1))

		;;

	4)
		month[april]=$((${month[april]}+1))

		;;

	5)
		month[may]=$((${month[may]}+1))

		;;

	6)
		month[june]=$((${month[june]}+1))

		;;
	7)
		month[january]=$((${month[january]}+1))

		;;

	2)
		month[february]=$((${month[february]}+1))

		;;

	3)
		month[march]=$((${month[march]}+1))

		;;

	4)
		month[april]=$((${month[april]}+1))

		;;

	5)
		month[may]=$((${month[may]}+1))

		;;

	6)
		month[june]=$((${month[june]}+1))

		;;

	7)
		dice[july]=$((${dice[july]}+1))

		;;

	8)
		dice[august]=$((${dice[august]}+1))

		;;

	9)
		dice[september]=$((${dice[september]}+1))

		;;

	10)
		dice[october]=$((${dice[october]}+1))

		;;

	11)
		dice[november]=$((${dice[november]}+1))

		;;

	12)
		dice[december]=$((${dice[december]}+1))

		;;
esac
done

echo ${!month[@]}
echo ${month[@]}
