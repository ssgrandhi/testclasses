#!/bin/bash
###################
# Purpose: To work with case statments
# Owner  : <>	
# Version: 1.0
# Input  : No input
# Output : Print message on screen
##################

OSNAME=$1

case $OSNAME in
	CentOS)
	       echo "You have selected $OSNAME"
	       echo "run yum -y update"
	       ;;	
	Ubuntu)
	       echo "You have selected $OSNAME"
	       echo "run apt-get -y update"
	       ;;	
	SuSE)
	       echo "You have selected $OSNAME"
	       echo "run yast command" 
	       ;;	
	*)
	       echo "You have selected $OSNAME"
	       echo "Not a known OS, please try again"
	       ;;	
esac

	 



