#!/bin/bash
source mylib.sh

if [ $# -lt 2 ]
then
	usage $0
	exit 1
fi

swap $1 $2
