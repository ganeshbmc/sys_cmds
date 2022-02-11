#!/bin/bash
for i in $(seq 1 $#); do
echo -n "$i "
if [ `expr $i % 2` == 1 ];
then
echo hi
fi
done
