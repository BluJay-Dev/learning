#!/bin/bash
HOST="googlerty.com"
ping -c 1 $HOST || echo "$HOST unreachble"

HOST="google.com"
ping -c 1 $HOST && echo "$HOST reachable"

HOST="google.com"
ping -c 1 $HOST
if [ "$?" -ne "0" ]
then 
    echo "$HOST unreachble"
    exit 1
fi 
exit 0 