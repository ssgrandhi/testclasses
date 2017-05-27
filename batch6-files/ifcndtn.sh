#!/bin/bash
#purpouse:working with if commanid
#############
#check the file is present r not
if [ -f "/etc/passwd" ]; then
echo "yes,the file is inside"
else
echo "no,the file is not inside"
fi
if [ -r "/etc/passwd" ];then
echo "readble permission"
else
echo "no read prmsn"
fi
if [ -w "/etc/shadow" ]; then
echo "yes,wrt prmsn"
else
echo "no,wrte prmsn"
fi
###################
