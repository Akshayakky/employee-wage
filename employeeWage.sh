#!/bin/bash -x

echo Welcome to Employee Wage Computation Program

#CONSTANTS
IS_PART_TIME=1;
IS_FULL_TIME=2;
MAX_HRS_IN_MONTH=100;
EMP_RATE_PER_HOUR=20;
NUM_WORKING_DAYS=20;

#VARIABLES
totalEmpHr=0;
totalWorkingDays=0;

#FUNCTION TO RETURN WORK HOURS
function getWorkingHours() {
	case $1 in
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
	echo $empHrs;
}

#FUNCTION TO CALCULATE DAILY WAGE
function calculateDailyWage() {
	local workHrs=$1
	wage=$(($workHrs*$EMP_RATE_PER_HOUR))
	echo $wage
}

#CALCULATING DAILY EMPLOYEE WAGE AND TOTAL EMPLOYEE HOURS TILL MAXIMUM WORKING HOURS OR TOTAL WORKING DAYS IN A MONTH IS REACHED
while [[ $totalEmpHr -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
	((totalWorkingDays++));
	empHrs="$( getWorkingHours $((RANDOM%3)) )";
	totalEmpHr=$(($totalEmpHr+$empHrs));
	empDailyWage[$totalWorkingDays]="$( calculateDailyWage $empHrs )"
done

totalSalary=$(($totalEmpHr*$EMP_RATE_PER_HOUR));

#CALCULATE TOTAL SALARY FOR A MONTH
totalSalary=$(($totalEmpHr*$EMP_RATE_PER_HOUR));

#DISPLAY DAILY WAGES
echo "Daily Wage : " ${empDailyWage[@]}
