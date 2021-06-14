#!/bin/bash
read -p "start or stop?" ANSWER
case "$ANSWER" in 
    start | START ) 
        /tmp/sleep­-walking-­server &
    ;;
    stop | STOP ) 
    kill $(cat /tmp/sleep­-walking-­server.pid
    ;;
    * ) 
    echo "INVALID ARGUMENT" 
    ;;
esac 
