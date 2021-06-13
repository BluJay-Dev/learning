#!/bin/bash
FILE=$1 
if [ -d $1 ]
then 
    echo "${1} is a directory"
elif [ -e $1 ]
then 
    echo "${1} is a file"
fi 