#!/bin/awk
BEGIN{
	FS=","
}
{
	mini=366
	if ($3 < mini)
		mini=$3
}
END{
	print mini
}
