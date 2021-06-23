#!/bin/bash

# Cleanup V3

# Warning:
# -------
# This script uses a number of features that will be later explained upon.
# By the time you've finished the first half of the book, the should be
# nothing mysterious about it!

LOG_DIR=/var/log
ROOT_UID=0	# Only users wurg $UID 0 have root priviliges.
LINES=50	# Default numbers of lines saved.
E_XCD=86	# Can't change directory? (This is an error code.)
E_NOTROOT=87	# Non-root exit error.

# Run as root, of course!
if [ "$UID" -ne "$ROOT_UID" ] 
then
	echo "Must be root to run this script!"
	exit $E_NOTROOT
fi

if [ -n "$1" ] 
then
	lines=$1
	# Test wether command-line argument is present.
else
	lines=$LINES 
	# Default, if not specified on command line.
fi

cd $LOG_DIR

if [ "$PWD" != "$LOG_DIR" ] 
# 'pwd' wont work, maybe it was changed; however, $PWD will return the value of pwd.
then
	echo "Cant change to $LOG_DIR!"
	# Not in /var/log?
	exit $E_XCD
fi #Doublecheck if in right directory before messing with log file.

tail -n $lines messages > mesg.temp 
# Save last section of message log file/
mv mesg.temp messages
# Rename it as system log file.

cat /dev/null > wtmp
# ': > wtmp' and '> wtmp' have the same effect.
echo "Log files cleaned up!"
# Note that there are other log files in /var/log not affected by this script.

exit 0
# A zero (0) return value from the script upon exit indicates success to the shell.
