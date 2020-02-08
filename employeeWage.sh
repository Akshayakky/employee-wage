#!/bin/bash -x

echo Welcome to Employee Wage Computation Program

#CONSTANTS
IS_PART_TIME=1;
IS_FULL_TIME=2;

#VARIABLES
empRatePerHr=20;
randomCheck=$((RANDOM%3));

if [ $IS_FULL_TIME -eq $randomCheck ];
then
	empHrs=8;
elif [ $IS_PART_TIME -eq $randomCheck ];
then
	empHrs=4;
else
	empHrs=0;
fi

salary=$(($empHrs*$empRatePerHr));
