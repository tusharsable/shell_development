#!/bin/bash -x

#Display title to user
echo "Welcome to Employee Wage Computation Program on Master Branch"

#Generate Attendance of employee 0 if absent and 1 for present
attendance=$(($RANDOM%2))
