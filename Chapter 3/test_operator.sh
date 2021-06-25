#!/bin/bash

# Test Operator (?)

# Within certain expressions, the ? indicates a test for a condition; such as in:
rand_var=$(($RANDOM%101))
(( var0 = $rand_var<98?9:21 ))
# This is the same as:
#	if [ "$rand_var" -lt 98 ] -> lt = less than
#	then
#		var0=9
#	else
#		var0=21
#	fi
echo "The values for rand_var and var0 are $rand_var and $var0, respectively."

# In a parameter substitution expression, the ? test whether a variable has been set.

# Finally, the ? can also be used as wild card for filename expansion gobbing; as well as representing one character in an extended regular expression.