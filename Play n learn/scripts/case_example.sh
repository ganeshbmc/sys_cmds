#!/bin/bash
echo What is your favourite image processor?
read pname
case $pname in
	[gG]imp | [iI]nkscape)
		echo Good choice
		;;
	[aA]dobe*)
		echo That costs a lot and needs cloud
		;;
	imagej)
		echo Measuring things on the image?
		;;
	*)
		echo I did not know $pname could do image stuff! 
		;;
esac
