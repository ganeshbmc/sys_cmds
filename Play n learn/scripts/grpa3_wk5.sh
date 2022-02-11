#/bin/bash
maxx=`echo ${@} | sort -n`
printf "%s" "$maxx"
