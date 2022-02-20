#!/bin/bash
for file in $(ls | egrep "^[12][0-9]{3}[AEMS][0-9]{3}$"); do
	while read identifier value; do
	if [[ $identifier == "JOINED_DATE" && $value < "2012/01/01" ]]; then
	echo $file
	fi
	done < $file
done > appraisal_list 
