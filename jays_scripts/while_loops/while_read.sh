#!/bin/bash 
LINE_NUM=1 
while read LINE 
do 
    echo "${LINE_NUM} : ${LINE}"
    ((LINE_NUM++))
done < while_loops.sh

grep '#!/bin/bash' while_loops.sh | while read $LINE 
do 
    echo "Bash: ${LINE}"
done 
clear 
FS_NUM=1
grep FS while_read.sh | while read while_loops while_read while_loops_user
do 
    echo "${FS_NUM} : i : ${while_loops}"
    echo "${FS_NUM} : i : ${while_read}"
    echo "${FS_NUM} : i : ${while_loops_user}"
    ((FS_NUM++))
done 
clear
while true 
do 
    read -p "1: Show disk usage.    2: Show uptime. " CHOICE 
    case "$CHOICE" in 
        1) 
            df -h 
            exit 0
            ;; 
        2) 
            uptime 
            exit 0
            ;;
        *) 
            exit 1
            break 
            ;;
    esac 
done 