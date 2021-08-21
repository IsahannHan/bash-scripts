#!/bin/bash

# Creating an array
BEST_BANDS=("Falamansa" "Milionário e José Rico" "Trio Parada Dura" "Turma do Pagode")

# Accessing an element in an array
# since using bash is supposed to make sense, the array starts at 0.
echo ${BEST_BANDS[0]}

# Reassigning any value
BEST_BANDS[3]="ABBA"

# Adding elements to an array
BEST_BANDS+=("Gino e Geno")

# Removing elements from an array
# If it doesn't inclue the accessor, it will delete the entire array: "unset BEST_BANDS"
# also this unset dude can be used even in variables
unset BEST_BANDS[0]

# Creating an hybrid array (the fuck)
STUFF=("Bananinha" 654 "Dedé do Vasco")

# Using an * will return all elements in an array
echo "Good musical taste? Do you mean listening to ${BEST_BANDS[*]}?"

# Using an # at the beginning and a @ inside the array accessor will return the array size
echo "There are ${#BEST_BANDS[@]} bands that are worth listening."
