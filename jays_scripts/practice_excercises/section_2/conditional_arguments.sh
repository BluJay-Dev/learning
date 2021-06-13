#!/bin/bash
echo "please input a file name" 
read FILE 
if 
    [ -f $FILE ]
then 
    echo "$FILE is a regular file"
if 
    [ -a $FILE ]
then 
    echo "$FILE exists"
elif 
    [ -b $FILE ]
then 
    echo "$FILE exists and is a block-special file"
elif 
    [ -c $FILE ]
then 
    echo "$FILE exists and is a character-special file"
elif 
    [ -d $FILE ]
then 
    echo "$FILE is a directory"
elif 
    [ -e $FILE ]
then 
    echo "$FILE is a file and exists"
elif 
    [ -f $FILE ]
then 
    echo "$FILE is a regular file"
elif 
    [ -g $FILE ]
then 
    echo "$FILE exists and it's SGID bit is set"
elif 
    [ -h $FILE ]
then 
    echo "$FILE exists and is a symbolic link"
elif 
    [ -k $FILE ]
then 
    echo "$FILE exists and it's sticky bit is set"
elif 
    [ -p $FILE ]
then 
    echo "$FILE exists and is a named pipe (FIFO)"
elif 
    [ -r $FILE ]
then 
    echo "$FILE exists and is readable"
elif 
    [ -s $FILE ]
then 
    echo "$FILE exists size is greater than 0"
elif 
    [ -t $FILE ]
then 
    echo "$FILE file descriptor FD is open and refers to a terminal"
elif 
    [ -u $FILE ]
then 
    echo "$FILE exists and it's SUID (set user ID) bit is set"
elif 
    [ -w $FILE ]
then 
    echo "$FILE exists and is writable"
elif 
    [ -x $FILE ]
then 
    echo "$FILE exists and is executable"
else 
    echo "$FILE is not a file or folder" 
fi 