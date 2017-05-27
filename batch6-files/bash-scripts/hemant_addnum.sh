ONE=$1
TWO=$2
if [ ! $ONE ]; then 
echo " please enter the first number :"
exit
fi
if [ ! $TWO ]; then
echo " please enter the second number :"
exit 
fi
ADD=`expr $ONE + $TWO`
echo "the addition is= $ADD "

exit

