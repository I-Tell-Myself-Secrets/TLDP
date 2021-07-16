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
