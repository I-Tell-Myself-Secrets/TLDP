#!/bin/bash

# When referencing variables, it is generally advisable to enclose its name in double quotes. This prevents reinterpretation of all special charcters within the quotes string. Keeping $ in double quotes permits referencing variables; that is, replacing the variable with its value.

# Use double quotes to prevent word splitting. An argument enclosed in double quotes presents itself as a single word, even if it contains whitesapce separators.

List="1 2 3 4 5"
for a in $List	# Splits the variable in parts at whitespace
do
	echo "$a"
done
# 1
# 2
# 3
# 4
# 5

echo "---"

for a in "$List"	# Perserves whitespace
do
	echo "$a"
done
# 1 2 3 4 5 

echo "---"

# A more elaborate example:

var1="a variable containing five words"
echo This is $var1	# Executes COMMAND with 7 arguments:
# "This" "is" "a" "variable" "containing" "five" "words"
echo "This is $var1."	# Executes COMMAND with 1 argument:
# "This is a variable containing five words."

var2=""			# Empty
echo $var2 $var2 $var2	# Executes COMMAND with no arguments
echo "$var2" "$var2" "$var2"	# Executes COMMAND with three arguments
echo "$var2 $var2 $var2"	# Executes COMMAND with 1 argument (2 spaces)

# NOTICE: Enclosing the arguments to an echo statement in double quotes is necesary only when word splitting or perservation of whitespace is necessary.

