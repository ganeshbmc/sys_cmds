#!/usr/bin/awk -f

BEGIN{
	FS=","
	item=ARGV[2]
	nos=ARGV[3]
	ARGV[2]=""
	ARGV[3]=""
	total=0
	}
$2 ~ item {
	total+=nos*$3
	}
END{
	print total
	}
