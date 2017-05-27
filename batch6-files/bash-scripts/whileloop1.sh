#!/bin/bash
###################
# Purpose: To work with while loop
# Owner  : <>	
# Version: 1.0
# Input  : No input
# Output : Print message on screen
##################

ANS=Y					# Initialized Condition
while [ $ANS == "Y" -o $ANS == "y" ]    # True Logic
do
  echo "Please give user name to add : "
  read USERNAME

  ./createuser.sh "$USERNAME" "redhat"

  echo "Do you want to add another user ? "
  read ANS				# Condition Modifier
done




