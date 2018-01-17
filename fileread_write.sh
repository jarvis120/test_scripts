#!/bin/bash
#This is to check basic read write opeariont to a file

echo "The file we are working on is /home/ec2-user/test/a.txt"
echo

wrting()
{
echo "enter string to write to above file: "
read a
echo $a >> /home/ec2-user/test/a.txt
}

searching()
{
echo "enter string to search in the above file: " 
read a
grep $a /home/ec2-user/test/a.txt
}

help()
{
echo "enter the operation 'writing' or 'searching'"
}

read -p "enter writing or searching " i
case $i in
	writing)
			wrting
	;;
	searching)
			searching
	;;
	*)
			help
	;;
esac
