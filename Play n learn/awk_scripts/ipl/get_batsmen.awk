#! /usr/bin/awk -f

BEGIN{
	FS=",";
	}
!seen[$5]++{
        gsub("\"", "");
	print $5
	}
END{
#	for (i in seen){print i ": " seen[i]}
	}
