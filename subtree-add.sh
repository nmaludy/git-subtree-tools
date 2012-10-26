#!/bin/sh
git subtree add --prefix=$1 $2 $3
echo $1 $2 $3 >> .gitsubtree