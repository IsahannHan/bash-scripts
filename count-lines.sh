#!/bin/bash

# $1 Receives the first argument after calling the script. 
# $2 receives the second one, and so on.
readonly FILENAME=$1

readonly LINE_COUNT=$(wc -l < $FILENAME)

echo "There are $LINE_COUNT lines in $FILENAME."
