#! /bin/bash -x
echo "Welcom to emp wage computation "
isPresent=1;
checkAttandance=$(( $RANDOM % 10))

#To check the attandance
if [ $isPresent -eq $checkAttandance ]
then
	echo "Emp is present "
else
	echo "Emp is not present "
fi
