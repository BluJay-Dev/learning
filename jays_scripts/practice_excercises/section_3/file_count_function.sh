#!/bin/bash 
function file_count () {
    local FILE=$(ls -p | grep -v / | wc -l)
    echo "$FILE files in this directory" 
}
file_count