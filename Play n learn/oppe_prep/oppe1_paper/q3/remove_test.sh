#!/bin/bash

#for dir in `ls -l | egrep '^d' | rev | cut -d " " -f 1 | rev`; do 
#	rm -r $dir;
#done

for item in `ls`; do
	if [[ $item = "create_test.sh" ]]; then
		echo skipped;
	elif [[ $item = "remove_test.sh" ]]; then
		echo skipped;
	elif [[ $item = "organise.sh" ]]; then
		echo skipped;
	else
		rm -r $item;
	fi;
done;
