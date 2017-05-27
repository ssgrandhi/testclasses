#!/bin/bash
###################
# Purpose: To work with string test
# Owner  : <>	
# Version: 1.0
# Input  : No input
# Output : Print message on screen
##################

# Get the username through which you are executing this script
WHOAMI=`/usr/bin/whoami`


# Use string test compare the result with root string
if [ $WHOAMI == "root" ]; then
  # True
  echo "You are running as ROOT user"
else
  # False
  echo "You are running as $WHOAMI user"
fi





