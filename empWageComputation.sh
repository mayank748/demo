#! /bin/bash -x

echo "Welcom to emp wage computation "

isPartTime=2 #To check user is doing partime
isPresent=1; #To check if the emp is present
chargeForOneHour=20 #Charge per hour of the emp
noOfWorkingHour=0 #No fo working hour of one emp
totalWage=0 #To store the total wage of the emp
totalWorkingDay=0 #To store to working days of emp
totalWageInMonth=0 #To store the total wage of emp in month
totalWorkingHours=0 #To store the total working hours
GIVEN_WORKING_HOUR=100
GIVEN_NUMBER_OF_DAYS=20

while [[ $totalWorkingDay -lt $GIVEN_NUMBER_OF_DAYS && $totalWorkingHours -lt $GIVEN_WORKING_HOUR ]]
do
checkAttandance=$(( $RANDOM % 10)) #To get for the check of emp attandance
#To check the attandance
case $checkAttandance in
	$isPresent)
		echo "Emp is present"
		noOfWorkingHour=8
		;;
	$isPartTime)
		echo "Emp is doing parttime"
		noOfWorkingHour=4
		;;
	*)
		echo "Emp is adsent"
esac

#To incremnt the working days of emp
if [[ $isPresent -eq 1 || $isPartTime -eq 2 ]]
then
	if [[ $totalWorkingDay -lt $GIVEN_NUMBER_OF_DAYS && $totalWorkingHours -lt $GIVEN_WORKING_HOUR  ]]
	then
	totalWorkingDay=$(( $totalWorkingDay + 1 ))
	totalHour;
	fi
fi

#To calculate the total working hour
function totalHour(){
	totalWorkingHours=$(( $totalWorkingHours + $noOfWorkingHour))
}

#Calculating the wage of the emp
totalWage=$(($totalWage+$(( noOfWorkingHour*chargeForOneHour ))))
echo "Total Wage of emp in a day "$totalWage

done

#Calculating the total wage of emp in month
totalWageInMonth=$totalWage
echo "Total wage of emp in month having total working hours "$totalWorkingHours " " $totalWageInMonth
