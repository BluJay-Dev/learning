#!/bin/bash
FILE=$1 
if 
    [ -f $1 ]
then 
    echo "$1 is a regular file with status code $?"
    exit 0 
elif 
    [ -d $1 ]
then 
    echo "$1 is not a directory, exit status: 1"
    exit 1
else 
    echo "Not a file or directory exit status: 2"
    exit 2
fi 
