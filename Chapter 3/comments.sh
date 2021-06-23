#!/bin/bash

# Bash Comments Examples:

# This line is a comment.

echo "A comment will follow."	# Some comment here.
#				 ^ Note the whitespace before the #

	# A tab precedes this comment.

# The following comment is embeded within a pipe.
initial=( `cat "$startfile" | sed -e '/#/d' | tr -d '\n' |\
# Delete lines containing # comment character.
	sed -e 's/\./\. /g' -e 's/_/_ /g'` )

# Exceprted from the life.sh script.

echo "The # here does not begin a comment."
echo 'The # here does not begin a comment.'
echo The \# here does not begin a comment.
echo The # here begins a comment.

echo ${PATH#:}		# Parameter substitution, not a comment.
echo $((2#101011))	# Base conversion, not a comment.

exit 0

