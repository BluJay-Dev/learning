#!/usr/bin/env bash

# It's for compatibility, not all OS and destribution have `/bin/bash` path

DEBUG="${DEBUG:-false}"
# Always use double qutes round shell variables
#
# ${VAR:-default} reads VARS from env first, if empty or not defined uses "default" value

if $DEBUG 
then 
    echo "Debug mode on."
else 
    echo "Debug mode off"
fi 

# Referances
# - GNU Bash default variables
#   https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html
# - Shebang:Portability
#   https://en.wikipedia.org/wiki/Shebang_(Unix)#Portability
# - Quoting
#   https://wiki.bash-hackers.org/syntax/quoting
# - Parameter Expansion
#   https://wiki.bash-hackers.org/syntax/pe
# - For insperation
#   https://github.com/netdata/netdata
#   https://git.savannah.gnu.org/cgit/guix.git/tree/etc/guix-install.sh
