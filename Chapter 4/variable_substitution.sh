#!/bin/bash

# Variable Substitution

# The name of a variable is a placeholder for its value, the data it holds. Referencing (retrieving) its value is called variable substitution.

# In order to carefully distinguish between the name of a variable and its value, the following must be noted: variable1 is the name of a variable, and $variable1 is a reference to its value, the data or item it contians.
variable1=100
echo variable1	# variable1
echo $variable1 # 100

#NOTICE: The only times a vaiable appears "naked" --without the $ prefix -- is when declared or assigned, when unset, when exported, in an arithmetic expression within double parentheses ((...)), or in the special case of a variable representing a signal. Assignment may be with an = (as in var1=27), in a read statement, and at the head of a loop (for var2 in 1 2 3).
	# It is important to note that enclosing a referenced value in double 		quotes ("...") does not intefere with variable substitution. This is 		called partial quoting, sometimes referred to as "weak quoting". Using 		single quotes ('...') causes the variable name to be used literally, 		and no substitution will take place. This is full quoting, sometimes 		referred to as 'strong quoting'.

# -----------------------------------------------------------------------------

# Example: Variable Assignment and Substitution

a=375
hello=$a
#   ^  ^

# ---------------------------
# No space permitted on either side of the '=' sign when initializing variables.

# If a space indeed exists, then:
#	VARIABLE =value
#		 ^
#% The script will try to run the VARIABLE command with argument =value
#	VARIABLE= value
#		 ^
#% The script tries to run the value command with the enviroment variable VARIABLE set to "".

# ---------------------------

echo hello	# hello
# Not a variable reference, just the string "hello" ...

echo $hello	# 375
#    ^		  This *is* a variable reference.
echo ${hello} 	# 375
#		  Likewise a variable reference, as above.

# Quoting . . .
echo "$hello"	# 375
echo "${hello}"	# 375

echo

hello="A B C   D"
echo $hello	# A B C D
echo "$hello"	# A B C   D
# As it can be seen, echo $hello and echo "$hello" give different results. That is, quoting a variable preserves whitespace.

echo

echo '$hello' # $hello
#    ^      ^
# Variable referencing disabled (escaped) by single quotes, which causes the '$' to be interpreted literally.

# Setting a NULL value
hello=
echo "\$hello (null value) = $hello"	# $hello (null value) =
# Note that setting a variable to a null value is not the same as unsetting it, although the end result is the same (see below).

# ---------------------------
#   Setting Multiple Values
# ---------------------------

echo; echo

numbers="one two three"
#	    ^   ^
other_numbers="1 2 3"
#		^ ^
# If there is whitespace embedded within a variable, then quotes are necessary.
#	other_numbers=1 2 3 -> This will give an error!
echo "numbers = $numbers"
echo "other_numbers = $other_numbers"
# Escaping the whitespace also works,
mixed_bag=2\ ---\ Whatever
#	    ^    ^ -> Space after space (\)
echo "$mixed_bag"	# 2 --- Whatever

echo; echo

# ---------------------------
#      Unsetting Values
# ---------------------------

echo "uninitialized_variable = $uninitialized_variable"
# Uninitialized variable has a null value (no value at all!).
uninitialized_variable= 	# Declaring, but not initializing it; same as 					above!
uninitialized_variable=420 	# Setting the variable.
unset uninitialized_variable	# Unsetting the variable.
echo "uninitialized_variable = $uninitialized_variable"

# NOTICE: Of course, an uninitialized variable has a "NULL" value -> No assigned value at all (not zero!). Furthemore, using such a variable before assigning it will cause problems; however, it is possible to use it for arithmetic operations. (It seems the initial value may be zero, yet it is believed it may change by memmory. Well thats what tends to happen in may other programming languages.)