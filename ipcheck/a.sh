#!/bin/bash
#script to check ip is whitelisted or not in the server
#Author:Jayaganesh
#Date: 01-01-2018

ip_address=$2
server_name=$3
reason=$4
total=$#


ip_checker()
{
	echo "checking ip_address already exist in the db"
		if [ ! "` grep $ip_address /home/ec2-user/test/ipcheck/iplist.txt`" ]
		then
			echo "ip address not found in db"
		else
			echo -e "ip_address already found in the db"
			grep $ip_address /home/ec2-user/test/ipcheck/iplist.txt
			exit 1
		fi
}
ip_format()
{
	if [[ $ip_address =~ ^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$ ]]; then

#checking if ipv4 is greater than 255
		for i in {1..4}
		do
			if [ $(echo "$ip_address" |cut -d. -f $i) -gt 255 ]
			then
				echo " ip is not within range 0 to 255"
				exit 1
			fi
		done
		echo "ip is in range 0-255 and correct format"
	else
		echo "bad ip format"	
		exit 1
		return 
		
	fi
#	exit 0
}

helper()
{
	 echo "To add an ip_address: sh $0 -a IP.IP.IP.IP server_name reason"
	 echo "To check an ip_address: sh $0 -c IP.IP.IP.IP"
	 echo "for help: sh $0 -h"
	  exit 1
}
check()
{
	if [ $total -eq 2 ]
	then
		ip_checker
	else
		 echo "To check an ip_address: sh $0 -c IP.IP.IP.IP"
	fi
}
add()
{
if [ $total -eq 4 ] 
        then
                
         	echo "checking ip_address format"
                ip_format
		ip_checker
        	echo -e "$ip_address : $server_name: $reason">>/home/ec2-user/test/ipcheck/iplist.txt
                echo "ip address added"

	else
		
        	echo "To add an ip_address: sh $0 -a IP.IP.IP.IP server_name reason"
fi

}

if [ $# -le 1 ]
 then
	helper
else 
case $1 in
	-c)
		check
	;;
	-a)
		add
	;;
	-h)
		helper
	;;
esac
fi


