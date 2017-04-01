#! /bin/bash

printf "\n \$* : %s" $*

printf "\n \$@ : %s" $@

printf "\n \$# : %s" $#

printf "\n \$0 : %s" $0

printf "\n \$\$ : (current proccess pid) : %s" $$

filepath=$(pwd)/$(basename $0)
printf "\n \$(pwd)/\$(basename \$0) : %s" $filepath 

[ -z $filepath ]
printf "\n Using \$\? to print the result from \[ \-z $filepath \] : %s" $?
printf "\n"

#storing the output in a variable
printf -v num4 "%04d" 4
echo $num4

#sending the stdout to a file and stderr to the same file
printf '%s\n%v\n' OK? Oops! > FILE 2>&1

#nonstardard sysntax to do the same
printf '%s\n%v\n' OK? Oops! &> FILE

./sa {1..3}{a..c}
./sa {{1..3},{a..c}}
./sa {01..13..3}



