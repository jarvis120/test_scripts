#!/bin/bash

#script to print n  random numbers using $RANDOM shell variable and while loop

read -p "enter the limit of random number: " x
if [ $x -gt 0 ];
then
	while [ $x -gt 0 ]
	do
		a=$RANDOM
		echo $a
		let  x=$x-1 #let is imp, its used to increment or decrement
	done
else
echo   "entere a digit"
fi


