#!/bin/bash

FILES=$(find -P $1 -name '.*')

#echo $FILES
find $1 -name '.*' -type f | cut -d"/" -f2 | uniq -c
