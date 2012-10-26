#!/bin/sh
exec < .gitsubtree
while read line
do
    if [[ $line == $1* ]] 
	then
		git subtree push --prefix=$line
	fi
done
