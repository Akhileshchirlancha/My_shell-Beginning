i=1
f=1
echo " Enter the number"
read n
while [ $i -le $n ]
do
f=`expr $f \* $i`
i=`expr $i + 1`
done
echo FACTORIAL = $f
