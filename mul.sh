#!/bin/bash
mul ()
{

	for i in 1 2 3 4 5 6 7 8 9 10
	do
	echo "$1 * $i = `expr $1 \* $i`"
	done
}
