sum=0
 echo " Enter the number"
 read n
while [ $n -gt 0 ]
do
temp=`expr $n % 10`
sum=`expr $sum + $temp`
n=`expr $n / 10`
done
echo $sum
