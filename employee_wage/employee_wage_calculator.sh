#!/bin/bash -x

#function to get total working hours
function day_work_hours() {
	#Generate Attendance of employee 0 if absent and 1 for present
	
	attendance=$2

	# check if full time or part time employee and assign working hours accordingly
	case $1 in

		0)	#if is_part_time equals 0 means full time employee
			hours_per_day=8
			;;

		1)	#if is_part_time equals 0 means full time employee
			hours_per_day=4
			;;

	esac

	echo $(($hours_per_day*$attendance))

}


#Display title to user
echo "Welcome to Employee Wage Computation Program on Master Branch"

#Initializing day and wage per hour and total wage
wage_per_hour=20
wage_total=0
day=1
hours=0

#get if employee is working part time and not full time
is_part_time=$(($RANDOM%2))

#for every day calculate daily wage and find total wage
while (( ($day <= 20) && (($hours<100)) ))
do

	#get todays work hours
	work_hour="$( day_work_hours $(($RANDOM%2)) $(($RANDOM%2)) )"
	echo $work_hour
	
	#Get day wage of Employee
	employee_day_wage=$(($wage_per_hour*$work_hour))
	
	#Get total wage till date in month
	wage_total=$(($wage_total+$employee_day_wage))

	#increment day
	day=$(($day+1))
	
	#increment hours
	hours=$(($hours+$work_hour))

done


echo "monthly wage is : "$wage_total
