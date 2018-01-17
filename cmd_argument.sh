#!/bin/bash
#script to check cmd line arguments

#This will take many arguements as it can using sh scriptname arg1 arg2 arg3
#$a takes arguments as an array
#for i in $@ ;do echo $i;done

#$* takes arguments as a string
for i in "$*" ;do echo $i;done


#To print only first argument just execute echo $1 so that sh scriptname arg1 will print  the arg1
#echo $1
