#!/bin/bash -x

echo Welcome to Employee Wage Computation Program

#CONSTANTS
IS_PRESENT=1

#VARIABLES
randomCheck=$((RANDOM%2));

if [ $IS_PRESENT -eq $randomCheck ]
then
	echo "Employee is Present"
else
	echo "Employee is Absent"
fi
