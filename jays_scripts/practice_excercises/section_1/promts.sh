#!/bin/bash
echo "Please type name: " 
read prompt
if [ -d $prompt ]
then 
    echo "${prompt} is a directory"
elif [ -e $1 ]
then 
    echo "${prompt} is a file"
fi 