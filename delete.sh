#delete copy of file
if [ $# -ne 2 ]
then 
echo "Syntax is $0 <file1><file22>"
exit 0
fi
cmp -s $1 $2
if [ $? -eq 0 ]
then
echo "Files are identical \nRemoving file $1"
rm $1
else
echo "Files $1 and $2 not identical"
fi 
exit 0
