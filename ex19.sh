#!/bin/bash
number_of_users=`who | wc -l`
echo -e "User name: $USER"
echo -e "Current Shell: $SHELL"
echo -e "Home Directory: $HOME"
echo -e "Your O/s Type: $OSTYPE"
echo -e "PATH: $PATH"
echo -e "Current directory: `pwd`"
echo -e "Currently Logged: $number_of_users user(s)"
if [ -f /etc/os-release ]
then
    echo -e "OS: `cat /etc/os-release`"
fi
if [ -f /etc/shells ]
then
    echo -e "Available Shells: "
    echo -e "`cat /etc/shells`"
fi
if [ -f /etc/sysconfig/mouse ]
then
    echo -e "Computer Mouse Information: "
    echo -e "`cat /etc/sysconfig/mouse`" 
fi
echo -e "Computer CPU Information:" 
cat /proc/cpuinfo
echo -e "Computer Memory Information:" 
cat /proc/meminfo
if [ -d /proc/ide/hda ]
then
    echo -e "Hard disk information:" 
    echo -e "Model: `cat /proc/ide/hda/model` "    
    echo -e "Driver: `cat /proc/ide/hda/driver` "   
    echo -e "Cache size: `cat /proc/ide/hda/cache` "    
fi
echo -e "File System (Mount):"  
cat /proc/mounts

