#!/bin/bash

FILES=$(find -P $1 -type f)

for file in $FILES 
do
	echo "File $file:"
	sed -n 2p $file | cut -d " " -f 3
	echo ""
done
