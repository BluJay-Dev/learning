#!/bin/bash
function file_count () {
    local ARG="$(ls -p $1 | grep -v / | wc -l)"
    echo "$ARG files in $1"
}
file_count /etc
file_count /var
file_count /usr/bin