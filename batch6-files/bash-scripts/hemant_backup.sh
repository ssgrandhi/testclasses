#!/bin/bash

TIME=`date +%d-%b-%y`   #M- minute d-date b-month y-year         
FILENAME=etc."$TIME".tar.gz    
SOURCE=/etc                   
DESTI=/BACKUP/            
if [ -f "$DESTI$FILENAME" ]; then
  echo "The backup $DESTI$FILENAME already exits"
  exit 
fi

if [ -d "/BACKUP" ]; then
echo "Yes, Directory $DESTI is present"
else
echo "Directory $DESTI is not present"
/bin/mkdir $DESTI
echo "Creating directory please wait"
sleep 2
echo "$DESTI directory has been created"
fi
	echo "Taking backup please wait ...."
	sleep 3
	/bin/tar -czf $DESTI$FILENAME $SOURCE	
	echo "Backup has been taken $FILENAME sucessfully !!!"
	  
