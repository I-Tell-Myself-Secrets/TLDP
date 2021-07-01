#!/bin/bash

# Braces ({})

# Brace Expansion:

# These operators can be used to quote words:
echo \"{These,words,are,quoted}\"	# " prefix and suffix

# Can be used, aslwell, to cancatenate files into one combined file:
cd Data
cat {sacred_texts_1,sacred_texts_2,sacred_texts_3} > sacred_excerpt.txt

# Can be used to copy files:
cp sacred_excerpt.{txt,bck}

# A comma may act upon a comma-separated list of file specs within braces. Filename expansion (globbing) applies to the file specs between the braces.
#	NOTICE: No spaces allowed within the braces unless the spaces are 		quoted or escaped.
	echo {sacred_excerpt.txt}\ :{\ A," B",' C'}
cd ..

# -------------------------------------------------------------------------

# Extended Brace Expansion:

# Braces can be used to echo elements given some range-constraint:
echo {a..z} # Echoes the English Alphabet
echo {1..5} # Echoes 1 2 3 4 5

# Can also be used to initialize arrays:
some_Array=( {A..Z} {a..z} {0..9} + / = ) # This is an array of the base64 						  character set
echo ${some_Array[*]}

# --------------------------------------------------------------------------

# Block Of Code: Also referred to as an inline group, this construct, in effect, creates an anonymous function (a function with no name). However, unlike in a "standard" function, the variables inside such code block remain visible to the rest of the script.
a=123
{ a=420; }
echo "a = $a" # It should print "a = 420"; that is, the value inside the 			code block.

# Applications 1: Read the lines of Data/read_lines.txt
File=Data/read_lines.txt

{
read line1
read line2
} < $File

echo
echo "The first line in $File is:"
echo $line1
echo
echo "The second line in $File is:"
echo $line2

# NOTICE: This protion of the script used the fstab file; however, my script doesn't use such a file for it was overwritten the first time I wrote this part (and tested it) that it bricked my previous OS. I bet it was a boob mistake but be warned: fstab file states the partions of the hardrive of the machine, if that information is lost and there is no way to recreate such a file (as with the noob that I am), the PC will tend to become useless.

# Application 2: Saving The Output Of A Code Block To A File
# Queries an rpm file for description, listing, and whether it can be installed.
# Saves the output to a file/
#	SUCCESS=0
#	E_NOARGS=65
#	if [ -z "$1" ]
#	then
#		echo "Usage: 'basename $0' rpm-file"
#		exit $E_NOARGS
#	fi
#	{
#	echo
#	echo "Archive Description:"
#	rpm -qpi $1	# Query Description
#	echo
#	echo "Archive Listing:"
#	rpm -qpl $1	# Query Listing
#	echo
#	rpm -i --test $1	# Query whether rpm file can be installed
#	if [ "$?" -eq $SUCCESS ]
#	then
#		echo "$1 can be installed!"
#	else
#		echo "$1 cannot be installed!"
#	fi
#	echo
#	} > "$1.test"	# Redirects output of everything in block to file.

#		NOTICE: Unlike a command group within (parentheses), as 		above, as code block enclosed by {braces} will not normally 			launch a subshell.

# -------------------------------------------------------------------------

# Placeholder For Text ({}): Used after xargs -i (replace strings option). The {} double curly brackets are a placeholder for output text.
#	ls . | xargs -i -t cp ./Data/{} $1 

# --------------------------------------------------------------------------

# Pathname ({} \): Mostly used in find constructs.

# Definition: A Pathname is a filename that includes the complete path. As an example, /home/bozo/Notes/Thrusday/Schedule.txt. This is sometimes referred to as absolute path.
#	NOTICE: The ';' ends the -exec option of a find command sequence. 		It needs to be escaped to protect it from interpretation by the 	shell.
exit 0