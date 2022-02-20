#!/bin/bash
for file in $(ls | egrep "^[12][0-9]{3}[AEMS][0-9]{3}$"); do
	while read line; do
	if [[ $line =~ "NAME" ]]; then
	echo $file ${line#* }
	fi
	done < $file
done > map
