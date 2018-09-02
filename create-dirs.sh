#!/bin/sh
mdepth=1
fname=$PWD/"dirs.txt"

# create filename with list of directories
find $1 -type d -maxdepth $mdepth -exec echo "$PWD""/root""{}" \; > $fname

# prepend all directories with $PWD + "/root"
#prepdirs=`awk -v pwd="$PWD" '{print pwd"/root"$0}' $fname`

# create structure
xargs -I {} mkdir -p "{}" < $fname
