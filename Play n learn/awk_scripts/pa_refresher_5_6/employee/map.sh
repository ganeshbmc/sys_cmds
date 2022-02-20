#!/bin/bash
for file in $(ls | egrep "^[12][0-9]{3}[AEMS][0-9]{3}$"); do
while read line; do
	if [[ $line =~ "NAME" ]]; then
	echo -n "$file "; echo $line | cut -d ' ' -f 2-
	fi
	done < $file
done > map
