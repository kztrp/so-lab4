#!/bin/bash

FILES=$(find -P $1  -print)
for file in $FILES
do
	#echo $1/$file
	if [[ -L $file ]]; then
		if ! [[ -d $file ]]; then
			echo $file
		fi
	fi
done





