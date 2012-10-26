#!/bin/sh
exec < .gitsubtree
while read line
do
	git subtree push --prefix=$line
done