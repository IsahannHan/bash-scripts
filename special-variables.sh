#!/bin/bash

# Special Bash variables (some may not be referenced in the script)
#
# $0            - Name of the bash script
# $1, $2 ... $n - Bash script arguments
# $$            - Process id of the current shell
# $#            - Total number of arguments passed to the script
# $@            - Value of all arguments passed to the script
# $?            - Exit status of the last executed command
# $!            - Process id of the last executed command

SCRIPT_NAME=$0
ARGUMENT_COUNT=$#
ALL_ARGUMENTS_VALUE=$@

echo "Script name: $SCRIPT_NAME"
echo "Argument count: $ARGUMENT_COUNT"
echo "Value of all arguments: $ALL_ARGUMENTS_VALUE"