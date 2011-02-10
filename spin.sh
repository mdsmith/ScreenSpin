#!/bin/bash
# A small, just for fun script to check whether or not you are in an instance
# of GNU screen. Yes, you could just type "screen -list" or whatnot, but
# this is a reference to the movie Inception. Leonardo DiCaprio spins a top to 
# see if he is in a dream. If he is, it spins forever. If it falls, he knows he # is awake. Inspired by realizing I was in a screen within a screen within 
# a screen. 
#
# Author: Martin Smith 
# Created: February 9, 2011
# GNU GPL and all that

ATTA=`screen -list | grep -c "(Attached)"`
if [ "$ATTA" = "1" ] ; then
	while true ; do
		echo -n "."
		sleep .02
	done
else 
	AAA=$RANDOM
	AAA=$((AAA%1000+100))
	for ((I=0; I<$AAA; I++)) ; do 
		echo -n "."
		sleep .02
	done
fi
echo ""
