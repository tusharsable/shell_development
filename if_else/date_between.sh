#!/bin/bash -x

month=$1
date=$2
march=3
june=6

if (( ($month > $march) && ($month < $june) ))
then
	echo true

elif(( ($month==$march) && ($date >= 20) ))
then
	echo true

elif(( ($month==$june) && ($date <= 20) ))
then
	echo true

else
	echo false
fi
