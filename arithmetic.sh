#!/bin/bash
#Author: jayagansh
echo "this is to test arithemtic expression"
#let expression make a variable equal to an expression
#expr expression pruint of the result directly won't work in quotes to save the result of expr you need to do command susbsition like a=$( expr 5 + 3 )
#$((expression)) return the result of the expression
#${#var} return the lenght of the variable bar

let a=5+4 #dont use space, if you are using space use in quotes
echo $a
let "b =2 + 3"
echo $b
expr 5 + 3 #will directly print the result instead of saving in a variable
expr "4 / 2" #this will print directly the expression iteslf
expr 4 / 2  #will print the result 2
c=$( expr 8 \* 2 )
echo $c #will print the result of expr 
echo $c++
echo $c--
