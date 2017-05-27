
#!/bin/bash
###################
# Purpose: To create a linux user
# Owner  : <>	
# Version: 1.0
# Input  : username
# Output : create a user with necessary password
##################

# Get the username and password from command line
MYUSER=$1
MYPASS=$2

# Check the user
if [ ! $MYUSER ]; then
  echo "Please specify user name"
  echo "Usage: $0 <uname> <pass>" 
  exit
fi

 Check the password
if [ ! $MYPASS ]; then
  echo "Please specify user password"
  echo "Usage: $0 <uname> <pass>" 
  exit
fi

# Check you are running the script with root permission
WHOAMI=`/usr/bin/whoami`

if [ $WHOAMI ! = "root" ]; then
  echo "You MUST be a root user"
  exit
fi


# Check the user already exists or not
 /usr/bin/id $MYUSER

if [ $? -eq 0 ]; then
  echo "Hey...!!!  the user $MYUSER already exists"
  exit
fi

# Create the user here
/usr/sbin/useradd $MYUSER

if [ $? -ne 0 ]; then
  echo "We have big big big problem while creating user $MYUSER"
  exit
fi

# Set the user password here
echo "$MYPASS" | /usr/bin/passwd --stdin $MYUSER

if [ $? -ne 0 ]; then
  echo "Problem setting password for user $MYUSER"
  exit
fi

# Print the success message
echo "User $MYUSER added SUCCESSFULLY !!!!!!!"












