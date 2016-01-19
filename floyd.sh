#!/bin/bash
a=1
for (( i=1 ; i<=5 ; i++ ))
do
for (( j=1 ; j<=i ; j++))
do
echo -n "$a"
let $a = $a + 1
done
echo " "
done

