#!/bin/bash
#function hello () {
#    echo "Hello $1"
#}
#hello Jay 
function hello() {
    for NAME in $@ 
    do 
        echo "HELLO $NAME"
    done 
    local VAR="1"
    VAR2="2"
    echo "$VAR"
    echo "$VAR2"
}
hello Jay Kiera Dan Ryan
echo "$VAR"
echo "$VAR2"

## Above you can see I created 2 variables VAR and VAR2 VAR is local so can only be used in the function but VAR2 is not local so can be used anywhere in the script, 
## the blank line when you run this script is me trying to call a local variable. 