#!/bin/bash

# Redirection (> &> >& >> < <>)

# Scriptname > filename redirects the output of scriptname to file filename. Overwrite filename if it already exists.
# Command &>filename redirects both the stdout and the stderr of command of filename.
#	NOTICE: This is useful for suppressing output when testing for 		condition. For example, let us test for whether a certain command 		exists.
	type bogus_command &>/dev/null
	echo $?		# Hold the bogus_command
	
	# Furthemore, a script can also be tested:
	command_test ()
	{
		type "$1" &>/dev/null
	}
	cmd=rmdir
	command_test $cmd; echo $?	# 0 should be returned
	cmd=bogus_command
	command_test $cmd; echo $?	# 1 should be returned

# Command >&2 redirects stdout of command to stderr

# Scriptname >>filename appends the output of scriptname to file filename. If filename does not already exist, it is created.

# [i]<>filename opens file filename for reading and writing, and assigns file descriptor i to it. If filename does not exist, it is created.

# For Processes Substitutions, (command)> and <(command) are used.

# In a different context, the '<' and '>' characters act as string comparison operators.

# In yet another context, the '<' and '>' characters act as integer comparison operators.

# The << operator is used in the form of "here documents".

# The <<< operator is used in the form of "here string".

# In the form of < and >, these can be used as ASCII Comparators:
veg1="carrots"
veg2="tomatoes"
if [[ $veg1 < $veg2 ]]
then
	echo "Although $veg1 precede $veg2 in the dictionary,"
	echo -n "this does not necessarily imply anything "
	echo "about my culinary preferences."
else
	echo "What kind of dictionary are you using, anyhow?"
fi

# The operators \< and \> can be used as word boundaries in a regular expression:
#	grep '\<the\>' textfile

# The operator of >| can be used as Force Redirection; hence, the act of forcibly overwritting a file.

# -----------------------------------------------------------------------------

# Pipe (|)

# Passes the output (stdout) of a previous command to the input of the next one, or to the shell. This is a method for chaining commands together.
echo ls -l | sh
# Passes the output of "echo ls -l" to the shell, with the same result as a simple "ls -l".

cat *.lst | sort | uniq
# Merges and sorts all ".lst" files, then deletes duplicate lines.

# NOTICE: A pipe, as a classic method of interprocess communication, sends the stdout of one process to the stdin of another. In a typical case, a command, such a cat or echo, pipes a stream of data to a filter, a command that transforms its input for processing.
search_word="dank"
some_file="Data/read_lines.txt"
cat $some_file | grep $search_word

# In addition, the output of a command or commands may be piped to a script; as in the following example, in which the input is set to uppercase:
ls -l | Data/uppercase.sh

#	NOTICE: The stdout of each process in a pipe must be read as the stdin 		of the next. If this is not the case, the data stream will block, and 		the pipe will not behave as expected:
	cat $some_File | ls -l | sort	# The output from "cat $some_File" 						disappears.

#	NOTICE: A pipe runs as a child process; therefore, it cannot alter 		script variables.
	some_variable=0
	echo "The new variable of some_variable is 1." | read some_variable
	echo "Is it tho...? (some_variable = $some_variable)"

exit 0

 
