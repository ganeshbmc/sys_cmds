#!/bin/bash

files=`find . -maxdepth 1 -type f`
cat $files | wc -l
