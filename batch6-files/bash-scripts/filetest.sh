#!/bin/bash
###################
# Purpose: To work with file test
# Owner  : <>	
# Version: 1.0
# Input  : No input
# Output : Print message on screen
##################


# Check /etc/passwd file is present or  not 

if [ -f "/etc/passwd" ]; then
  # Execute this if this is true
  echo "Yes, the file /etc/passwd exists"
else
  # Execute this if this is false
  echo "No, the file /etc/passwd does not exists"
fi

# Check do we have read permission on /etc/shadow 

if [ -r "/etc/shadow" ]; then
  # True
  echo "Yes, we have read permission on /etc/shadow"
else
  # False
  echo "No, we do not have read permission on /etc/shadow"
fi






