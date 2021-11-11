#! /bin/bash -x

echo "Welcom to emp wage computation "

isPartTime=2 #To check user is doing partime
isPresent=1; #To check if the emp is present
checkAttandance=$(( $RANDOM % 10)) #To get for the check of emp attandance
chargeForOneHour=20 #Charge per hour of the emp
noOfWorkingHour=0 #No fo working hour of one emp
totalWage=0 #To store the total wage of the emp

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
#Calculating the wage of the emp
totalWage=$(( noOfWorkingHour*chargeForOneHour ))
echo "Total Wage of emp "$totalWage
