#!/bin/bash
###################
# Purpose: To work with number test
# Owner  : <>	
# Version: 1.0
# Input  : No input
# Output : Print message on screen
##################

MARKS=$1

# Put the check condition here


if [ $MARKS -gt 65 ]; then
   # True
   echo "Student Result :	First Class"
elif [ $MARKS -gt 55 ]; then
   # True
   echo "Student Result :	Second Class"
elif [ $MARKS -gt 45 ]; then
   # True
   echo "Student Result :	Third Class"
else
   # False
   echo "Student Result :	Fail"
fi



