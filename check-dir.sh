#!/bin/bash

for NAME1 in `cat file1` ; do

for NAME2 in `cat file2` ; do

if [  $NAME1 == $NAME2 ]; then
	echo " $NAME1 is same as $NAME2 "
else 
	echo " $NAME1 is not same as $NAME2 "
fi
done
done
