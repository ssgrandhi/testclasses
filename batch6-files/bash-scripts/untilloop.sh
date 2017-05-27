#!/bin/bash
###################
# Purpose: To work with until loop
# Owner  : <>	
# Version: 1.0
# Input  : No input
# Output : Print message on screen
##################


COUNT=1	 				 # Initialized condition
until [ $COUNT -gt 10 ] 		 # False Logic 
do
  echo "The COUNT value is $COUNT"
  COUNT=`expr $COUNT + 1` 		 # Condition Modifier
done




