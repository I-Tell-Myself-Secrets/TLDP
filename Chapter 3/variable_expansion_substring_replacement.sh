#!/bin/bash

# Variable Expansion / Substring Replacement

# In combination with the > (Redirection Operator), truncates a file to zero (0) length, without changing its permisions. If the files didn't previously exist, it creates it.
: > Data/data.xxx # File "data.xxx now empty"

# Same effect as cat /dev/null > data.xxx. However, this does not fork a new process, since ":" is a built-in.

#In combination with the >> redirection operator, has not effect on a pre-existing target file (: >> target_file). If the file did not exist, it creates it.
#	This applies to regular files, not pipes, symlinks, and certain 	special files.

exit 0