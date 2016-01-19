#!/bin/bash
source fun3.sh
#. fun3.sh
fun1 ()
{
echo "from function 1"
}

fun2 ()
{
echo "from function 2"
}
fun1
fun2
fun3
