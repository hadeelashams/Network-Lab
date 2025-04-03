#largest number
if [ $# -ne 3 ]
then 
echo "syntaxis <$0><n1><n2><n3>"
exit 1
else
max=$1
if [ $2 -gt $max ]
then
max=$2
fi
if [ $3 -gt $max ]
then
max=$3
fi
echo "max is $max"
fi 
