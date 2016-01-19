#!/bin/bash
avg=0
sum=0
#number_of_args=$#
for i in $*
do
sum=`expr $sum + $i`
done
avg=`expr $sum / $#`
echo "average of all number is $avg"
