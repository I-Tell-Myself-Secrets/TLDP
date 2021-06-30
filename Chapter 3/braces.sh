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

exit 0