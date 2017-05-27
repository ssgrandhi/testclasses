#!/bin/bash
###################
# Purpose: To work with logical test
# Owner  : <>	
# Version: 1.0
# Input  : Need to give student marks in between 1 & 100
# Output : Print the student result
##################

MARKS=$1

# NOT  test
if [ ! $MARKS ]; then
 echo "Please enter the marks"
 echo "Usage $0 <marks>"
 exit
fi

# OR test
if [ $MARKS -gt 100 -o $MARKS -lt 1 ]; then
  echo "Sorry, Marks should be in between 1 to 100"
  exit
fi


# Put the check condition here

# AND test
if [ $MARKS -ge 65 -a $MARKS -le 100 ]; then
   # True
   echo "Student Result :	First Class"
elif [ $MARKS -ge 55 -a $MARKS -le 64 ]; then
   # True
   echo "Student Result :	Second Class"
elif [ $MARKS -ge 45 -a $MARKS -le 54 ]; then
   # True
   echo "Student Result :	Third Class"
else
   # False
   echo "Student Result :	Fail"
fi



