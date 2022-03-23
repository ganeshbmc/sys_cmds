#! /usr/bin/awk -f

BEGIN{
	FS=",";
	}
!seen[$5]++{
        gsub("\"", "");
	print $17 ": " $5
	}
END{
#	for (i in seen){print i ": " seen[i]}
	}
