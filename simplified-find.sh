#!/bin/bash

readonly FILENAME=$1

# "2> /dev/null" basically means that any errors that the command may receive, be sent to 
# /dev/null, which is kind of a "black hole", so it won't display any errors (may happen due to permission issues). 
find / -iname $FILENAME 2> /dev/null