if [ $# != 1 ]; then
    echo "Usage: $0 address"
    exit 1
else
    ip=$1
fi
#checking ipv4 address
echo " checking for ipv4 address format"
if [[ $ip =~ ^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$ ]]; then

#checking if ipv4 is greater than 255
for i in {1..4}
do
	if [ $(echo "$ip" |cut -d. -f $i) -gt 255 ]
	then
		echo " ip is not within range 0 to 255"
		exit 1
	fi
done
		echo "ip is in range 0-255 and correct format and adding to iplist.txt"
echo $ip >> /home/ec2-user/test/list.txt
else
echo "bad ip address format"
fi
	
