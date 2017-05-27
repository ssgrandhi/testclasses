#!/bin/bash
###################
# Purpose: To work with while loop
# Owner  : <>	
# Version: 1.0
# Input  : No input
# Output : Print message on screen
##################


COUNT=1	 				 # Initialized condition
while [ $COUNT -le 10 ] 		 # True Logic 
do
  echo "The COUNT value is $COUNT"
  COUNT=`expr $COUNT + 1` 		 # Condition Modifier
done




