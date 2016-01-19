#!/bin/bash
cls()
{
    clear
    echo "Clear screen, press a key . . ."
    read
    return
}
show_ls()
{   
    ls
    echo "list files, press a key . . ."
    read
    return
}
start_mc()
{
    if which mc > /dev/null ; then
	mc
	echo "Midnight commander, Press a key . . ."
	read
    else
	echo "Error: Midnight commander not installed, Press a key . . ."
	read
    fi		
    return
}
start_ed()
{
    ced=$1
    if which $ced > /dev/null ; then
	$ced
	echo "$ced, Press a key . . ."
	read
    else
	echo "Error: $ced is not installed or no such editor exist, Press a key . . ."
	read
    fi		
    return
}
print_help_uu()
{
	   echo "Usage: $0 -c -d -m -v {editor name}"; 
	   echo "Where -c clear the screen";
	   echo "      -d show dir";
	   echo "      -m start midnight commander shell";
	   echo "      -e {editor}, start {editor} of your choice";
	   return
}
if [ $# -eq 0 ] ; then
    print_help_uu
    exit 1
fi    
while getopts cdme: opt
do
    case "$opt" in
	c) cls;;
	d) show_ls;;
	m) start_mc;;
	e) thised="$OPTARG"; start_ed $thised ;;
	\?) print_help_uu; exit 1;; 
    esac
done      
