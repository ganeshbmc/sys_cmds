#!/bin/bash

read x
if [[ $x =~ '[a-zA-Z]+' ]]
then 
	echo "STRING"
elif [[ $x =~ '^-' ]] 
then 
	echo "NNUM"
else 
	echo "PNUM" 
fi
