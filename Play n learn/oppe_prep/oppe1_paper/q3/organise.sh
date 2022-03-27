#!/bin/bash

for item in `ls *.*`; do 
	dname=`echo $item | cut -d "." -f 2`; 
	mkdir $dname; 
	mv $item ./$dname/$item; 
done;
