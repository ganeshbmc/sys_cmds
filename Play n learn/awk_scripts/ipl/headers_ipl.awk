#! /usr/bin/awk -f

BEGIN{
	FS=","
	OFS="\n"
}
{
	for (i=1;i<=NF;i++)
		{print i ": " $i}	
}
