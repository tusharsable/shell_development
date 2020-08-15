#!/bin/bash -x

#Display title to user
echo "Welcome to Employee Wage Computation Program on Master Branch"

#Initializing Wage per hour and  full Day hour
wage_per_hour=20
hours_per_day=8


#Generate Attendance of employee 0 if absent and 1 for present
attendance=$(($RANDOM%2))

#Get day wage of Employee
employee_day_wage=$(($attendance*$wage_per_hour*$hours_per_day))

