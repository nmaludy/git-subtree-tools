#!/bin/sh
mv .gitsubtree .gitsubtree.bak
exec < .gitsubtree.bak
while read line
do
    if [[ $line != $1* ]] 
	then
		echo $line >> .gitsubtree
	fi
done
rm .gitsubtree.bak