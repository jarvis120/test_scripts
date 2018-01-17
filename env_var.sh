#!/bin/bash
echo $0; #will print the script name

echo "The first command line argument is $1"; #will print the first command line argument along with the script like test.sh 1 ie will print the result 1

echo "the second command line argument is $2"; #will print the second command line argument along with the script like test.sh 2 ie will print the result 2


echo "the last command line agruement in \$1 to \$9 is $9"; #will print the last  command line argument along with the script like test.sh 1...9 ie will print the result 9

echo $# #will print how many arguments passed to script

echo "the process id of this script$$" #will print the process id of this script

echo "the user running this script is $USER"

echo "the hostname of this maching is $HOSTNAME"

echo " the exit status of the script is $?"
