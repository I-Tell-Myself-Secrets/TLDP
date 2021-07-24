#!/bin/bash

# Naked Variables

# When is a variable "naked", i.e., lacking the '$' in the front?
# When it is being assigned, rather than referenced.

# Assignment
a=3000
echo "The value of \"a\" is now $a."

echo

# Assignment using "let"
let a=1000*3
echo "The value of \"a\" is now $a."

echo

# In a "for" loop (really, a type of disguised assignment):
echo "Values of \"a\" in the loop are: "
for a in 7 8 9 10 11
do
	echo -n "$a "
done

echo; echo

# In a "read" statement (also a type of assignment):
echo -n "Enter a value for \"a\": "; read a
echo "The new value for \"a\" is $a."

echo 

exit 0