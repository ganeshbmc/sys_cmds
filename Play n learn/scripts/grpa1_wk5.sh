#!/bin/bash
perm=`ls -l "$1" | cut -d ' ' -f 1`
if test $perm = '-r--------'; then
echo "Yes"
fi; 
