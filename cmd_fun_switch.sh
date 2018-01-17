#!/bin/bash
#script combining switch function and cmd line arguments

without_quotes_array()
{
	for i in $@; do echo $i; done
}

function with_quotes_array
{
	for i in "$@"; do echo $i;done
}

function without_quotes_string
{
	for i in $*; do echo $i;done
}

function with_quotes_string
{
	for i in "$*";do echo $i;done
}

echo "This a script to diff between \$@\ and \$*\ (cmd arguments) with an without_string"

read -p "enter value: " i
case $i in
	1)
		without_quotes_array
		;;
	2)
		with_quotes_array
		;;
	3)
		with_quotes_string
		;;
	4)	
		without_quotes_string
		;;
	esac	
	echo "nothing to display"
