#!/bin/bash
#pgm to check positional arguments

echo "the name of the script is " $0
for i 
	do echo "the arguments are" $i
done
echo the number of arguments passed is $#

if [ $# -lt 3 ]
then
	echo "the arguments are less than 3"
else
	echo "the arg are greater than 3"
fi

if [ $# -gt 4 ]
then
	echo "the arguments are greater than 4"
else
	echo "the arg are less than 4"
fi

