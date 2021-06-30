#!/bin/bash

# Parentheses (())

# Tese operators can be used to form command groups:
(a="Hello There!"; echo $a)
#	NOTICE: A listing of commands within parentheses starts a subshell. 		Furthermore, variables inside parentheses, within such a subshell, 		are not visible to the rest of the script. The parent process, the 		script, cannot read variables created in the child process, the 	subshell!
	a=123
	(a=321; )
	echo "a = $a"	# a = 123
	# Hence, 'a' within parentheses acts like a local variable.

# In addition, parentheses can be used to initialize arrays:
some_Array=("Monkee" 1 2 3 "Dankness")
echo ${some_Array[*]}