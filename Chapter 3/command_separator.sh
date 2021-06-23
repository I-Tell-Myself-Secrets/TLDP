#!/bin/bash

# Command Separators

echo hello; echo there!

if [ -x "$filename" ]; then	# Note the space after the semicolon!
	echo "File "$filename" exists!"; cp $filename $filename.bak
else
	echo "File $filename not found."
fi; echo "File test complete."

exit 0