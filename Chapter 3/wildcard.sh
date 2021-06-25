#!/bin/bash

# Wild Card (*)

# The * character is a "wild card" for filename expansion in globbing. By itself, it mastches every filename in agiven directory.
echo *
cd ..&& echo *

# The * also represents an arithmetic operator; that is, it denotes multiplacation if left alone, exponentiation if in pairs, as in the following case:
a=10
b=2
echo "A and B are varables that equal to $a and $b, respectively. Hence, A*B = $(($a * $b)) and A^B = $((a**b))."

exit 0

	