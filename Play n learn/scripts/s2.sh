#!/bin/bash
echo Use of a for loop

# ---------------------
for i in file_{1..9}
do
	echo $i
done

# --------------------
for i in $(ls /bin/z*)
do
	echo $i
done

# --------------------
