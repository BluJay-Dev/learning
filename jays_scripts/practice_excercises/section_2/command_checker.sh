#!/bin/bash
cat excercise_3.sh 
if 
    [ $? = "0" ]
then 
    echo "Command Suceeded"
    exit 0 
else 
    echo "Command failed" 
    exit 1
fi 
