#!/bin/bash

perms(){
permissions=`ls -l $1 | cut -d " " -f 1`
p=${permissions:1:2}
if [[ $p = "r-" ]]; then
	echo r;
elif [[ $p = "-w" ]]; then
	echo w;
elif [[ $p = "rw" ]]; then
	echo r;
	echo w;
else	
	echo NO;
fi;
}
