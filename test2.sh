#!/bin/bash
usage () {
echo "--user"
}
while getopts u: opt
do
  case $opt in
	u) user="$OPTARG";;	
   esac
done

if [ $user == `grep -Po '^sudo.+:\K.*$' /etc/group` ];
then
    echo  "$user belongs to sudo group"	
fi

