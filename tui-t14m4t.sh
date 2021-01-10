#!/bin/bash

#########################
# a script by lazy pwny #
#########################

[ ! -e t14m4t ] && { echo "t14m4t not found" ; exit 1 ; }

#Colors
white="\033[1;37m"
grey="\033[0;37m"
purple="\033[0;35m"
red="\033[1;31m"
green="\033[1;32m"
yellow="\033[1;33m"
purple="\033[0;35m"
cyan="\033[0;36m"
cafe="\033[0;33m"
fiuscha="\033[0;35m"
blue="\033[1;34m"
tp="\e[0m"


while :; do
echo -ne "\tEnter The Target Ip Adress\n\n   ┌──(MS-WEB-BN@t14m4t))-[target]\n   └─> "  ; read target
[ -z $target ] && echo -e "\n\t${red}Pls Give Any Target Ip Adress For Example$tp '192.168.0.1'\n" || break 
done


while :; do
echo -ne "\tEnter The number of threads (in 1 and 64)\n\n   ┌──(MS-WEB-BN@t14m4t))-[threads]\n   └─> "  ; read threads
	if ! [ -z $threads ] ; then
		if [ $threads -gt 0 ] && [ $threads -lt 65 ] ; then
			break
		else
			echo -e "$red\n\tPls Enter The Threads For Example$tp '32'"		
		fi
	else
		echo -e "$red\n\tPls Enter The Threads For Example$tp '32'"
	fi
done
bash ./t14m4t "$target" "$threads"
