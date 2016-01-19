#!/bin/bash
if [ $# -eq 3 ]; 
then
     if [ -e $3 ]; 
     then
    	    tail +$1 $3 | head -n$2
         else
    	    echo "$0: Error opening file $3" 
	    exit 2
     fi   
else
   echo "Missing arguments!"	
    fi
