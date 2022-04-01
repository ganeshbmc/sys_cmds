#!/bin/bash

read line
rline=`echo $line | rev`
if [[ $line == $rline ]]; then
	exec bash -c "echo It is a palindrome"
fi
echo It is not a palindrome
