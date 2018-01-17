#!/bin/bash
#This is to test switch and case

help()
{
echo "To print date  :dates"
echo "To print logged in user :user"
echo "To print server details :vesion"
}

dates()
{
	date

}

user()
{
	w

}
version()
{
	cat /etc/issue
}


echo "This is to test switch case"
help
read  -p "enter a string from above " test
echo ""


case $test in
	dates)
		dates
	;;
	user)
		user
	;;
	version)
		version
	;;
	help|*)
		help
	;;
esac


