#!/bin/bash

echo "What year?"

read YEAR

echo "Displaying calendar of $YEAR"

# This is called Command Substitution. Basically it retrieves the result of the execution inside it.
# Can be used in two ways:
# $(function) or $`function`

echo $(cal $YEAR)
