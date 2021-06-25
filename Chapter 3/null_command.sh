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

# Provide a placeholder where a binary operation is expected:
: ${username='whoami'}
# ${username='whoami'}	Gives an error without the leading :
#			unless "username" is a command or built-in...

# Evaluate string of variables using parameter substitution:
# : ${HOSTNAME?} ${USER?} ${MAIL?}
# Prints error message is one or more essential enviromental variables is not set.

# May be used to begin a comment, although it is not recommended. Using # for a comment turns off error checking for the remainder of that line, so almost anything may appear in a comment. However, this is not the case with:
# : This is a comment that generates an error, (if [ $x -eq 3 ] ).

# The ":" serves as a filed separator, in /etc/passwd, and $PATH variable:
echo $PATH

# A colon can serve as a placeholder in an otherwise empty function:
not_empty()
{
	:
} # Contains a : (null command), and so its not empty.

not_empty()

# A colon is acceptable as function name:
#	:()
#	{
#		echo "The name of this function is "$FUNCNAME"!"
#		# Why use a colon as function name?
#		# It's a way of obfuscating your code.
#	}

#	: -> Of course, this is not a recommended practice / behavior. In 		fact more recent releases of bash do not permit this.

exit 0
