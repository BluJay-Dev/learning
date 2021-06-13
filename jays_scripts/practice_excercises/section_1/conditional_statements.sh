#!/bin/bash
if 
    [ -e /etc/shadow ] 
then 
    echo "Shadow passwords are enabled"
fi 
if 
    [ -w /etc/shadow ]
then 
    echo "You have permissions to edit /etc/shadow."
else 
    echo "You don't have permission to do this!"
fi 
