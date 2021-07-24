#!/bin/bash

a=23	# Simple case
echo "The value of \"a\" is $a."
b=$a+2
echo "The value of \"b\" is $b."

# Now, getting a little bit fancier (command substitution):

a=`echo Hello!`	# Assigns result of "echo" command to 'a'...
echo "The new value of \"a\" is $a."

# Note that including an exclamation mark (!) within a command substitution constrcut will not work from the command-line, since this triggers the Bash History Mechanism. Inside a script, however, the history functions are disabled by default.

a=`ls -l`	# Assigns the result of "ls -l" command to 'a'.
echo "The new value for \"a\" is: "; echo "$a."

echo

echo $a		# Removing the quotes when echoing a variable removes 			whitespace.

exit 0