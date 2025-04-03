#to perform calculator 
if [ $# -ne 3 ]
then 
echo "Syntax is <$0><n1><n2><n3>"
else
case $2 in
+) sum=`expr $1 + $3`;;
-) sum=`expr $1 - $3`;;
x|X) sum=`expr $1 \* $3`;;
%) sum=`expr $1 % $3`;;
*) echo "Invalid operator";;
esac
echo $sum
fi 
