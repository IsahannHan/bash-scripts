#!/bin/bash

readonly FILE_A=$1
readonly FILE_B=$2

# The "du -b" command counts how many bytes are in a file
# The "cut" command takes only the byte count output from the du command (check man page)
readonly FILE_SIZE_A=$(du -b ${FILE_A} | cut -f1)
readonly FILE_SIZE_B=$(du -b ${FILE_B} | cut -f1)

# Every arithmetic operation must happen between $(())
readonly ADDED_VALUE=$((${FILE_SIZE_A} + ${FILE_SIZE_B}))
readonly SUBTRACTED_VALUE=$((${FILE_SIZE_A} - ${FILE_SIZE_B}))
readonly MULTIPLIED_VALUE=$((${FILE_SIZE_A} * ${FILE_SIZE_B}))

# Dividing like this will only show the integer part
# Using bc (basic calculator) to show decimal output (check man page)
readonly DIVIDED_VALUE_INTEGER=$((${FILE_SIZE_A} / ${FILE_SIZE_B}))
readonly DIVIDED_VALUE_DECIMAL=$((${FILE_SIZE_A} / ${FILE_SIZE_B} | bc -l))

# Power 
readonly POWERED_VALUE_A=$((${FILE_SIZE_A} ** 3))
readonly POWERED_VALUE_B=$((${FILE_SIZE_B} ** 3))

# Remainder (division rest, if not exactly)
readonly REMAINDED_VALUE_A=$((${FILE_SIZE_A} % 3))
readonly REMAINDED_VALUE_B=$((${FILE_SIZE_B} % 3))

echo "File [${FILE_A}] has [${FILE_SIZE_A}] bytes."
echo "File [${FILE_B}] has [${FILE_SIZE_B}] bytes."

echo "
[OPERATIONS]
"

echo "File A size + File B size = ${ADDED_VALUE}"
echo "File A size - File B size = ${SUBTRACTED_VALUE}"
echo "File A size x File B size = ${MULTIPLIED_VALUE}"
echo "File A size / File B size (only integer part) = ${DIVIDED_VALUE_INTEGER}"
echo "File A size / File B size (with decimal part) = ${DIVIDED_VALUE_DECIMAL}"
echo "File A size³ = ${POWERED_VALUE_A}"
echo "File B size³ = ${POWERED_VALUE_B}"
echo "File A size % 3 = ${REMAINDED_VALUE_A}"
echo "File B size % 3 = ${REMAINDED_VALUE_B}"