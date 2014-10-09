#!/bin/bash
#
# Generates a file containing a fixed number of line, with 2 random numbers on each line.
#

echo "Running script..."

rm inputFile.txt

for i in {1..100000};
    do n=$(shuf -i 1-10000 -n 1); m=$(shuf -i 1-$n -n 1);
    echo "$n $m">>inputFile.txt;
done
