#!/bin/bash -x

echo Welcome to Employee Wage Computation Program

#CONSTANTS
IS_PART_TIME=1;
IS_FULL_TIME=2;

#VARIABLES
totalSalary=0;
empRatePerHr=20;
numWorkingDays=20;

for (( day=1; day<=$numWorkingDays; day++ ))
do
	randomCheck=$((RANDOM%3));
	case $randomCheck in
			$IS_FULL_TIME)
				empHrs=8
				;;
			$IS_PART_TIME)
				empHrs=4
				;;
			*)
				empHrs=0
				;;
	esac

	salary=$(($empHrs*$empRatePerHr));
	totalSalary=$(($totalSalary+$salary));
done
