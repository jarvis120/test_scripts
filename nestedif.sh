#!/bin/bash

#read a number
read -p "Enter a number: " x

#checking if x greater than zero
if [ $x -gt 0 ];
then
	if [ $x -lt 10 ];
	then
		echo "entered is a number which is $x"
	else
		echo "entered number is greater than 10"
	fi
else
	echo "print its not a number"
fi
