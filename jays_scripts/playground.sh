#!/bin/bash 
MY_SHELL="bash"
PICTURES=$(ls *jpg)
DATE=$(date +%F)

if [ "$MY_SHELL" = "bash" ]
then   
    echo "You seem to like the bash shell!"
elif [ "$MY_SHELL" = "csh" ]
then 
     echo "You seem to like the CSH shell."
else 
    echo "You don't like csh or bash"
fi 

for COLOR in red green blue 
do 
    echo "COLOR: $COLOR"
done 

for PICTURE in $PICTURES 
do 
    echo "Renaming ${PICTURE} to ${DATE}-${PICTURE}"
    mv ${PICTURE} ${DATE}-${PICTURE}
done 

