#!/bin/bash -x

#Display title to user
echo "Welcome to Employee Wage Computation Program on Master Branch"

#Initializing Wage per hour and  full Day hour
wage_per_hour=20


#get if employee is working part time and not full time
is_part_time=$(($RANDOM%2))

# check if full time or part time employee and assign working hours accordingly
case $is_part_time in

	0)	#if is_part_time equals 0 means full time employee
		hours_per_day=8
		;;

	1)	#if is_part_time equals 0 means full time employee
		hours_per_day=4
		;;
esac

#Generate Attendance of employee 0 if absent and 1 for present
attendance=$(($RANDOM%2))

#Get day wage of Employee
employee_day_wage=$(($attendance*$wage_per_hour*$hours_per_day))

