#!/bin/bash


read -p "Enter 1st Number : " A
read -p "Enter 2nd Number : " B

echo "Addition of '$A' and '$B' is  : $(( A + B ))" 
echo "Subtration of '$A' and ${B} is : $(( A - B ))"
echo "Multiplication of ${A} and '${B}' is : $(( A * B ))"
if (( "$B" != 0 ))
then
	echo "Division of $A and $B is : $(( A / B)) "
fi
