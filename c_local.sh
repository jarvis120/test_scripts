#!/bin/bash
a="This varaible is outside of the function TEST"
function TEST
	{
		local a="This varaible is inside function TEST"
		echo $a

	}
echo $a;
echo "calling function" 
TEST
echo $a;

