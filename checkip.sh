#!/bin/bash
#to read and wirte from a file

help()
{
	echo "To write: write"
	echo "TO read:  read"
}

writes()
{
	echo -e "\n the entering must be like IP_address Server_name reason"
	read -p "enter the ip address in above format " add_ip
	if [ $add_ip -le "0" ]
	then
		{	
			if [ $add_ip -le 3 ]
			then
				echo "please enter in proper format"
			else
				echo $add_ip >> /home/ec2-user/test/iplist.txt
			fi
		}
	fi
}
reads()
{
	echo "read"
}
echo "This is to to check read and write to a file"
echo
help
read -p  "select the opeartion from above  " a

case $a in
	write)
		writes
	;;
	read)
		reads 
	;;
	*)
		echo "please enter in the propr format"
		help
	;;
	esac
