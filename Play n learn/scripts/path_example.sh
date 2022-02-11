#!/bin/bash
echo path is set as $PATH
i=1
IFS=:
for n in $PATH
do
	echo $i $n
	(( i++ ))
done
