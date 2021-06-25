#!/bin/bash

# Value Operator ($)

# The $ can be used for variable substitution; hence, it indicates the value the variable holds:
var1=5
var2=23skidoo

echo $var1 # 5
echo $var2 # 23skidoo

# Subsequently, the $ can also indicate the end-of-a-line of a text.

# The format of ${} indicates parameter substitution.

# Additionally, in the case of the Quoted String Expansion Format ($'...'), this construct expands single or multiple escaped octal or hex values into ASSI or Unicode Characters.

# With reference to the constructs of $* and $@, they indicate Positional Parameters.

# The $ can also be an exit status variable in the form of $?; that is, the $? variable holds the exit status of a command, a function, or of the scirpt itself.

# Finally, the $ can also be a process ID variable in the form of $$ for it is able to hold the process ID of the script in which it appears.
echo "The ID for the process of this script is: $$."

exit 0