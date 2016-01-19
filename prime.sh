echo "enter the number"
read n
i=1
c=0
while [ $n -ge $i ]
do
 if [ `expr $n % $i` -eq 0 ]
then
c=`expr $c + 1`
fi
i=`expr $i + 1`
done
if [ $c -eq 2 ]
then
echo prime
else
echo not prime
fi
