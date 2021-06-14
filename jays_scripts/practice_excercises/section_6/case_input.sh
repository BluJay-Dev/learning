#!/bin/bash

# COLORS
readonly GREEN="\033[0;32m"
readonly YELLOW="\033[1;33m"
readonly RED="\033[0;31m"
readonly CYAN="\033[1;36m"
readonly RESET="\033[0m"
readonly TICK="\xE2\x9C\x94"
readonly CROSS="\xE2\x9D\x8C"
readonly NC='\033[0m'

echo -e "${GREEN}1. Show disk usage"
echo -e "${YELLOW}2. Show uptime"
echo -e "${CYAN}3. display logged in users${NC}"

read -p "what would you like to do? (entre q to quit) " INPUT 
case "$INPUT" in 
    1) 
        echo "Showing Disk usage" 
        df -h 
        exit 0 
        ;;
    2) 
        echo "Showing uptime"     
        uptime 
        exit 0  
        ;;
    3) 
        echo "showing logged in user"
        users 
        exit 0 
        ;;
    q | Q) 
        echo "Goodbye" 
        exit 0 
        ;; 
    *) 
        echo "Invalid choice!"
        exit 1
        ;; 
esac 