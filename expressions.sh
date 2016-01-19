#!/bin/bash
x=28
y=2
z=`expr $x / $y`
echo z=$z
echo `expr $x % $y`
echo `expr $x + $y`
echo `expr $x \* $y`
