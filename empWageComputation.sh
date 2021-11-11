#! /bin/bash -x

echo "Welcom to emp wage computation "
isPresent=1;
checkAttandance=$(( $RANDOM % 10))
chargeForOneHour=20
noOfWorkingHour=0
totalWage=0

#To check the attandance
if [ $isPresent -eq $checkAttandance ]
then
	echo "Emp is present"
	noOfWorkingHour=8
else
	echo "Emp is not present "
	noOfWorkingHour=0
fi
totalWage=$(( noOfWorkingHour*chargeForOneHour ))
echo "Total Wage of emp "$totalWage
