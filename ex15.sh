#!/bin/bash
#
# Linux Shell Scripting Tutorial 1.05r3, Summer-2002
#
# Written by Vivek G. Gite <vivek@nixcraft.com>
#
# Latest version can be found at http://www.nixcraft.com/
#
# Q15
#

temph=`date | cut -c12-13`
dat=`date +"%A %d in %B of %Y (%r)"`

if [ $temph -lt 12 ]
then
    mess="Good Morning $LOGNAME, Have nice day!"
fi

if [ $temph -gt 12 -a $temph -le 16 ]
then
    mess="Good Afternoon $LOGNAME"
fi

if [ $temph -gt 16 -a $temph -le 18 ]
then
    mess="Good Evening $LOGNAME"
fi

if which dialog > /dev/null
then
    dialog --backtitle "Linux Shell Script Tutorial"\
    --title "(-: Welcome to Linux :-)"\
    --infobox "\n$mess\nThis is $dat" 6 60
    echo -n "                            Press a key to continue. . .                        "
    read
    clear
else
    echo -e "$mess\nThis is $dat"
fi
