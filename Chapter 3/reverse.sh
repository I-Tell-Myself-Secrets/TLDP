#!/bin/bash

# Reverse (Or Negate) The Sense Of A Test Or Exit Status

# The ! operator inverts the exit status of the command to which it is applied. It also inverts the meaning of a test operator. This can, for example, change the sense of equal (=) to not equal (!=). The ! operator s a Bash Keyword.
# In a different context, the ! also appears in indirect variable references.
# In yet another context, form the command line, the ! invokes the Bash History Mechanism. Note that within a script, the history mechanism is disabled.

# A simple example:
a=1
if [ a != 10 ]
then
	echo "A is not equal to 10! That is: $a != 10."
fi

exit 0