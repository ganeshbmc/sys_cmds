#! /usr/bin/awk -f

BEGIN{
	FS=",";
	}
!seen[$7]++{
        gsub("\"", "");
	print $18 ": " $7
	}
END{
#	for (i in seen){print i ": " seen[i]}
	}
