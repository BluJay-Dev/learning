#!/bin/bash 
# COLORS
readonly GREEN="\033[0;32m"
readonly YELLOW="\033[1;33m"
readonly RED="\033[0;31m"
readonly CYAN="\033[1;36m"
readonly RESET="\033[0m"
readonly TICK="\xE2\x9C\x94"
readonly CROSS="\xE2\x9D\x8C"

LINE_NUM=0
CUR_LINE=1 
read -p "How many lines would you like to read? " LINES 
while [ $LINE_NUM -lt $LINES ]
do 
    read READ 
    echo -e "${GREEN}$CUR_LINE: $READ"
    ((LINE_NUM++))
    ((CUR_LINE++))
done < while_increment.sh 
