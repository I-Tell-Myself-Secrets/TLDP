#!/bin/bash

# Dollar Sign Operator ($)

# This operator can be used for Variable Substitution, as follows:
var1=5
var2=23skidoo

echo $var1	# 5
echo $var2	# 23skidoo

# Hence, a $ prefixing a variable name indicates the value the variable holds.

# Furthemore, the $ operator can be used to indicate end-of-line of a text.

# With that being said, in more complex applications, the $ can be used with other symbols to denote the following:
#	- It can be used in the form of ${} to work as Parameter 		Substitution.
#	- It can be written as $'...' to be a Quoted String Expresion; that 		is, the constrcut expands single or multiple escaped octal and 		hexadecimal values into ASCII or Unicode.
#	- It can be used as Positional Parameters in the form $* and $@.
#	- It can also be used an an exit status variable in the form ?$. In 		other words this costruct holds the exit status of a command, a 	function or of the script itsef.
#	- The $$ dentoes the Process ID Variable of the script in which it 		appears, as ilustrated below:
	echo "The Process ID of this sript is the following $$."



