#!/bin/bash

# Description - Processes csv files 

# -R option - Get number of records (does not count row with headers); assumes headers are in first row
# -F option - Get number of fields
# -I [arg ID] Fetch the record if ID is given; assumes that ID is the first column
# Takes filename as the last argument


# Script

filename=${@: -1}

while getopts "RFI:" options; do
	case "${options}" in
		R)
			awk 'END{print NR-1}' $filename
			;;
		F)
			head -1 $filename | awk 'BEGIN{FS=","}END{print NF}'
			;;
		I)	
			id=${OPTARG}
			awk -v id="$id" 'BEGIN{FS=","} $1 ~ id {print}' $filename
			;;
		*)
			echo "ERROR"
			;;
	esac
			
done;
