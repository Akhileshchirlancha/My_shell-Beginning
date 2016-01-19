#!/bin/bash
. mul.sh
fun ()
{
echo "the multiplication table for $1"
}
fun $1
mul $1

