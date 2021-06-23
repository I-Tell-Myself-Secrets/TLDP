#!/bin/bash

# Null Command (:)

# This is the shell equivalent of a "NOP" (no op, a do nothing operator). It may be considered a synonym for the shell built-in true. The ":" command is itself a Bash built-in, and its exit status is true (0).

:
echo $?	#0

# An endless loop can be constrcuted:
#	while:
#	do
#		operation 1
#		operation 2
#		...
#		operation N
#	done

# Same as:
#	while true
#	do
#		...
#	done

# Placeholder in if/then test:
#	if condition
#	then : # Do nothing and branch ahead
#	else	# Or else ...
#		echo "The test succeded!"
#	fi

