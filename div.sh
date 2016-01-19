#!/bin/bash
div ()
{
if [ $2 -ne 0 ]
then
echo "$1/$2= `expr $1 / $2`"
else
echo "dividion by zero(0) is not possible"
fi
}
div $1 $2
