#!/bin/bash
NUM=4

find $1 -maxdepth 2 -mindepth 2 -type l -printf '%h\0' | awk -v num="$NUM" 'BEGIN{RS="\0"} {array[$0]++} END{for (line in array) if (array[line]>num) printf "%s\n", line}'

