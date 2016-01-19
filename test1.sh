#!/bin/bash
echo "kernel version is:  `uname -r` "
#echo "kernel build date is: `cat /proc/version | grep SMP`"
echo "kernel build date is: `cat /proc/version | awk '{print $13 " " $14 " " $15 " "$16}'`"


