#!/bin/bash

kbd1=es	#default keyboard layout
kbd2=gb	#USB keyboard layout

while true
do
	layout="$(setxkbmap -query | grep -a layout | cut -c13-14)"
	for dev in /sys/bus/usb/devices/*-*:*
	do
		#If kbd is in
		if [[ "$(cat $dev/bInterfaceClass)" == "03" && "$(cat $dev/bInterfaceProtocol)" == "01" ]]
		then
			#If kbs is spanish
			if [[ $layout == $kbd1 ]]
			then
				setxkbmap $kbd2
				layout=$kbd2
			fi
			#Break FOR loop and wait 5 for next iteration of WHILE loop
			break
		fi
		if [[ $layout == $kbd2 ]]
		then
			setxkbmap $kbd1
			layout=$kbd1
		fi
	done
	sleep 5s
done