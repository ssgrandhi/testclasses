#!/bin/bash
###################
# Purpose: To work with for loop
# Owner  : <>	
# Version: 1.0
# Input  : No input
# Output : Print message on screen
##################

FILENAME=$1

if [ ! -f "$FILENAME" ]; then
 echo "The file name $FILENAME does not exits"
 exit
fi


for i in `cat $FILENAME`
do
	userdel "$i"
	rm -rf "/home/$i"
	rm -rf "/var/spool/mail/$i"
done




