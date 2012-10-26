#!/bin/sh
# subtree-push
#
# Push a specific subtree back to its origin.
# Parameters: $1 -> The prefix of the subtree you wish to push
#
exec < .gitsubtree
while read line
do
    if [[ $line == $1* ]] 
	then
		git subtree push --prefix=$line
	fi
done
