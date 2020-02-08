#!/bin/bash -x

echo Welcome to Employee Wage Computation Program

#CONSTANTS
IS_PRESENT=1

#VARIABLES
randomCheck=$((RANDOM%2));

if [ $IS_PRESENT -eq $randomCheck ];
then
	empRatePerHr=20;
	empHrs=8;
	salary=$(($empHrs*$empRatePerHr));
else
	salary=0;
fi
