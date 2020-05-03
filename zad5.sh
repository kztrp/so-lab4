#!/bin/bash

FILES=$(find D -type f -perm /002 -size +50c)

for file in $FILES 
do
	echo "Usuwam plik $file"
	rm $file
done
