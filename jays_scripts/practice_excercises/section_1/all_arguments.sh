#!/bin/bash
for FILE in $@
do 
if [ -d $FILE ]
then 
    echo "$FILE is a directory"
elif [ -e $FILE ]
then 
    echo "$FILE is a file"
fi 
done 