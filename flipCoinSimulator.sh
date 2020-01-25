#!/bin/bash -x
randomValue=$((RANDOM%2))
if [ $randomValue -eq 1 ]
then
	echo Heads
else
	echo Tails
fi
