#copy file
if [ $# -ne 2 ]
then
echo "\n syntax is <$0> <src file name><tgt file name>"
exit 1 
fi 
if [ ! -f $1 ]
then
echo "$1  is not exiting or not an ordinary file"
exit 2
fi
if [ -f $2 ]
then
echo "target file exit over write if (y/n)"
read ans
if [ $ans = "n" ] 
then 
exit 3
fi
fi
cp $1 $2
echo "file copied"
