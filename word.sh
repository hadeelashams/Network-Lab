#counting nmber of occurence of a word in a set of file

if [ $# -lt 2 ]
then 
echo "sytanx is <$0> <word> filename1 <[ filename2 ]>"
exit 1
fi
word=$1
shift
count=0
while [ $# -ne 0 ]
do
 for wd in `cat $1`
do
 if [ $wd = $word ]
then 
count=`expr $count + 1`
fi
done
shift
done
echo "Number of occurence of word =$count" 
