#!/bin/bash

# Comma (,) Operator

# The comma operator links together a series of arithmetic operations. All are evaluated, but ony the last one is returned.

let "t2 = ((a = 9, 15/3))"
# Set "a = 9" and "t2 = 15/3"

# The comma operator can also concatenate strings.

for file in /{,usr/}bin/*calc
#		^ Find all executable files ending in "calc"
#		  in /bin and /usr/bin directories.
do
	if [ -x "$file" ] 
	then
		echo $file
	fi
done

exit 0