#!/bin/bash
ip_address=$2
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
	fi
	exit 0
}
if [ $# -le 1 ]
 then
    echo "Usage: $0 address server_name reason"
    exit 1
 else
	ip_format
fi
