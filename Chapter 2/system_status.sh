#!/bin/bash

# Premilinary Excercise: Show time and date; as well as all the current users in the system and and its (the computer, that is) uptime.

SYS_DATE=$(date)
SYS_USERS=$(who)
UPTIME=$(uptime -p)

echo "This script will ilustrate the date, time, users and uptime of the current system.

-----------------------------------------------------------------------------
"
echo "The current date and time of the system is as follows: $SYS_DATE
      
--------------------------------------------
 		USERS			    
--------------------------------------------
$SYS_USERS
      
The uptime is: $UPTIME"

exit 0
