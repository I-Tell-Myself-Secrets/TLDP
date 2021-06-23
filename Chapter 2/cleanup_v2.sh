#!/bin/bash
# Proper header for a Bash Script.

# Cleanup V2
# Run as root, of course!
# Insert code here to print an error message and exit if not in root!

LOG_DIR=/var/log
# Variables are better than hard-coded values!
cd $LOG_DIR
# Get the value stored in variable and go into log.

cat /dev/null > messages
cat /dev/null > wtmp

echo "Logs cleaned up!"

exit
# The right and proper method of exiting a script.
# A bare exit returns the exit status of the preceding command. 