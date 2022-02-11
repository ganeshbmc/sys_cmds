#!/usr/bin/gawk -f
BEGIN {
	FS=":"
}
{
	print $1
}
