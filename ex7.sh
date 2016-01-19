#!/bin/bash
if [ $# -ne 1 ]
then
    echo "Usage: $0   number"
    exit 1
fi
n=$1
sum=0
rem=0
while [ $n -gt 0 ]
do
    rem=`expr $n % 10`
    sum=`expr $sum + $rem`
    n=`expr $n / 10`
done
    echo  "Sum of digit for numner is $sum"
  
