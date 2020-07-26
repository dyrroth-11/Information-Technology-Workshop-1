#!/bin/bash

Display(){
	ls
read -p "Choice file to display " f
if [[ -f "$f" ]]; then
	cat $f | less	
	sleep 2s
	exit
else
	echo "Enter valid file name"
	sleep 1s
	clear
	Display
fi
}
Remove(){
	ls
read -p "Enter file to be removed " f;
if [[ -f "$f" ]]; then
  rm $f
  sleep 2s
  exit
else
	echo "Enter valid file name"
	sleep 1s
	clear
	Remove
fi
}
Copy(){
ls
	read -p "Choose file to copy " f
	read -p "Enter destination(add new name if required) " d
if [[ -f "$f" ]]; then
  cp $f $d
  sleep 2s
  exit
else
	echo "Enter valid file name"
	sleep 1s
	clear
  Copy
fi
}
List(){
	ls
read -p "Enter file name (full/partial) " f;
  ls | grep $f
  sleep 2s
  read -p "Repeat?(y/n) " r
  if [[ $r=="y" ]]; then 
  	List
  else exit
	
fi
}
Size(){
	ls 
	read -p "Which file's size would you like to know(in bytes)? : " f 
	if [[ -f $f ]]; then 
		stat -c %s $f
	else 
		echo "Enter valid file name"
		sleep 1s
		clear
		Size
	fi
}
novice_mode(){
	echo "     FILE AND DIRECTORY MANAGEMENT COMMANDS                  "
	echo "                                                             "
	echo "   1-- Display the contents of file                          "
	echo "   2-- Remove a file                                         "
	echo "   3-- Copy a file                                           "
	echo "   4-- List a file                                           "
	echo "   5-- Size of a file                                        "
	echo "   6-- Quit--Return to main Menu                             "
	echo "                                                             "
	echo "               Enter your choice:                            "
   
read n 
clear 
case $n in 
	1) Display ;;
    2) Remove ;;
    3) Copy ;;
    4) List ;;
    5) Size ;;
    6) bash ./myhelp.sh   ;;
    *) echo "ENTER A CORRECT CHOICE  " ; echo " "; echo " ";  bash ./file_man.sh ;;
     esac
}

Expert_mode(){
	echo "     FILE AND DIRECTORY MANAGEMENT COMMANDS                  "
	echo "                                                             "
	echo "   1-- Display the contents of file                          "
	echo "   2-- Remove a file                                         "
	echo "   3-- Copy a file                                           "
	echo "   4-- List a file                                           "
	echo "   5-- Size of a file                                        "
	echo "   6-- Exit Program;                                         "
	echo "                                                             "
	echo "               Enter your choice:                            "

read n 
clear 
case $n in 
	1) Display ;;
    2) Remove ;;
    3) Copy ;;
    4) List ;;
    5) Size ;;
    6) exit   ;;
    *) echo "ENTER A CORRECT CHOICE  " ; echo " "; echo " ";  bash ./file_man.sh ;;
     esac

}
if [[ $# -eq 0 ]]; then
	novice_mode
else Expert_mode
fi

