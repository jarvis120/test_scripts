#!/bin/bash
PASSWD_FILE=/etc/passwd

# get user name
read -p "Enter a user name : " username
if grep "^$username:" /etc/passwd >/dev/null
then
#	echo "User '$username' found in $PASSWD_FILE file."
grep "^$username:" /etc/passwd
else
	echo "User '$username' not found in $PASSWD_FILE file."
fi
