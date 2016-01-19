#!/bin/bash
if [ $# -ne 1 ]
then
    echo "Usage: $0   number"
    exit 1
fi
n=$1
rev=0
rem=0
while [ $n -gt 0 ]
do
    rem=`expr $n % 10`
    rev=`expr $rev \* 10  + $rem`
    n=`expr $n / 10`
done
    echo  "Reverse number is $rev"

