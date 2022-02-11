#!/bin/bash
echo Shell scripts in /bin directory
for i in $(ls /bin)
do
	file /bin/$i | grep "shell script"
done
