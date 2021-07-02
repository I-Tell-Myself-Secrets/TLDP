#!/bin/bash

# Squared Braces ([])

# These operators can be used as follows:

# 	1. Tests Operators ([] and [[]])

# 	Operators used to test the expression between themselves. Note that 		the '[' element is part of the shell buil-in test (and a synonym 		for it), bnot a link to the external command /usr/bin/test. 		Moreover, [[]] is more flexible than [].

#	2. Array Element ([])

#	In the context on an array, brackets set off the numbering of each 		element of that array.
	some_Array=(1 3 5)
	echo "These are all the elements of some array: ${some_Array[*]}!"
	echo "The first element of the array is ${some_Array[0]}."
	echo "The second element of the array is ${some_Array[1]}."
	echo "The third element of the array is ${some_Array[2]}."
	some_Array[0]=-1
	echo "The first element of this array was changed to ${some_Array[0]}!"
	
#	3. Range Of Characters ([])

#	As part of a regular expression, brackets delineate a range of 		characters to match.

#	4. Integer Expansion ($[...] or (()))

#	These constructs are used to evaluate integer expressions between $[], 		or its alternative (()).
	a=3
	b=7
	echo $[$a+$b]	# 10
	echo $[$a*$b]	# 21

exit 0