#!/bin/bash

# Quoting means just that, bracketing a string in quotes. This has the effect of protecting special characters in the string from reinterpretation or expansion by shell or shell script. (A character is "specal" if it has an interpretation other than its literal meaning. For example, the asterisk (*) represents a wild card characters in globbing and regular expressions.

# Finding documents with their first letter:
ls -l [Bb]*	# It should output the name of this file
ls -l '[Bb]*'	# It should give error, as there is no file with sich name.
# NOTICE: In everyday speech or writing, when we "quote" a phrase, we set it appart and give it special meaning. In Bash script, when we quote a string, we set it appart and protect its literal meaning.

# Given the program, it is possible to use quoting for the finding setences given certain literal words:
grep '[Ff]irst' *.sh

# Quoting can supress ehco's appetite for new lines:
echo $(ls -l)
echo "$(ls -l)"
