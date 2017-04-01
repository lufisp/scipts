#!/bin/bash
while getopts "ab:c:" opt
do
  case $opt in
    a ) VAR1="a selected" ;;
    b ) VAR2="b selected $OPTARG" ;;
    c ) VAR3="c selected $OPTARG" ;;
    * ) VAR4="no opts" ;;
  esac
done

shift $((OPTIND - 1))
echo $VAR1 $VAR2 $VAR3 $VAR4
echo "argumentos após opções: " "$@"
exit 0
