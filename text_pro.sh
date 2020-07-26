#!/bin/bash

Search(){
	ls
read -p "Enter pattern to be searched " p
read -p "Enter file to be searched " f
if [[ -f "$f" ]]; then
	grep -w "$p" $f	| less
else
	echo "Enter valid file name"
	sleep 1s
	clear
	Search
fi
}
Count(){
	ls
	read -p "Enter a file name " f
if [[ -f "$f" ]]; then 
 wc $f 
else
  echo "Enter a valid argument "
  sleep 1s
  clear
  Count
fi 
}
Diff(){
	ls
read -p "ENTER FIRST FILE NAME " f
read -p "ENTER SECOND FILE NAME " s

if [[ ( -f "$f" ) && ( -f "$s" ) ]]; then 
  diff $f $s | less
else 
   echo "ENTER VALID FILE NAME "
   sleep 1s
clear 
Diff
fi
}

Novice_mode(){
	clear
	echo "          TEXT PROCESSING COMMANDS                       "
	echo "                                                         "
	echo " 1-- Search a file for a pattern                         "
	echo " 2-- Count lines,words,and characters in specified files "
	echo " 3-- Display line differences between two files          "
	echo " 4-- Quit --Return to Main Menu                          "
	echo "                                                         "
	echo "             Enter your choice:                          "

read n 
clear
case $n in 
	1) Search ;;
    2) Count ;;
    3) Diff;;
    4) bash ./myhelp.sh  ;;
    *) echo "ENTER A CORRECT CHOICE  " ; echo " "; echo " ";  bash ./text_pro.sh   ;;
     esac
}

Expert_mode(){
	clear
	echo "          TEXT PROCESSING COMMANDS                       "
	echo "                                                         "
	echo " 1-- Search a file for a pattern                         "
	echo " 2-- Count lines,words,and characters in specified files "
	echo " 3-- Display line differences between two files          "
	echo " 4-- Quit --Exit Program                                 "
	echo "                                                         "
	echo "             Enter your choice:                          "

read n 
clear
case $n in 
	1)  Search ;;
    2)  Count ;;
    3) Diff ;;
    4) exit
               ;;
    *) echo "ENTER A CORRECT CHOICE  " ; echo " "; echo " ";  bash ./text_pro.sh 
               ;;
     esac
}
if [[ $# -eq 0 ]]; then 
	Novice_mode
else Expert_mode
fi
