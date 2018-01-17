#!/bin/bash
#script to check string comparassion from user input
read -p "enter string to compare: " x
if [ $x = "abc" ]
	then
		echo "print the string entered is correct"
	else
		echo "wrong input"
fi
