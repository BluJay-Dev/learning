#!/bin/bash
echo "What filetype should we use? "
read FILE_TYPE
echo "${FILE_TYPE} is the file type"
echo  "What prefix would you like to use? "
read PREFIX
echo "${PREFIX} is the prefix"
readonly DATE="$(date +%Y-%m-%d)"
echo "$DATE.$FILE_TYPE"

if 
    [ -n "$PREFIX" ]
then 
    for file in $(ls *.$FILE_TYPE); do mv $file $PREFIX.$FILE_TYPE; done 
    echo "$file moved to $PREFIX.$FILE_TYPE due to  $2"
    exit 0
elif 
    [ -z "$PREFIX" ]
then 
    for file in $(ls *.$FILE_TYPE); do mv $file $DATE.$FILE_TYPE; done 
    echo "$file moved to $DATE.$FILE_TYPE due to no text entered"
    exit 0
fi 
exit 0 