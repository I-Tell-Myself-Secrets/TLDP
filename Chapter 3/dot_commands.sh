#!/bin/bash

# Dot (.) Commands

# The Dot can be used run files, such as this one with ./filename.sh

# The Dot can be used as a component of a filename. When working with filenames, a leading dot is the prefix of a hidden file , a file tha the ls command will not normally show.

touch .hidden_file.txt

ls -l

ls -al

# When considering directory names, a single Dot represents the current working directory, and two Dots denote the parent directory.

pwd
cd .
pwd
cd ..
pwd

# The Dot often appears as the destination of a file movement command, in this context meaning current directory.

# cp /home/bozo/current_work/junk/* .

exit 0
