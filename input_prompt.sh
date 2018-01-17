#!/bin/bash
#Author: jayaganesh

echo "this script is to test variable input with prompt"
echo
read -p 'Enter your username' name
read -sp 'Enter your password' passwd
echo 
echo "your username is $name and password is $passwd"

