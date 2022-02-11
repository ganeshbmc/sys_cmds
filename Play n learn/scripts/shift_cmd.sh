#!/bin/bash
i=1
while [ -n "$1" ]
do
	echo argument $i is $1
	shift
	(( i++ ))
done
