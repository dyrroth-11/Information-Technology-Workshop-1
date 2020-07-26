#!/bin/bash
Novice_mode(){
	echo "         SYSTEM STATUS COMMANDS                         "
	echo "                                                        "
	echo "   1-- Display the current date and time                "
	echo "   2-- Current disk usage                               "
	echo "   3-- List current local and environmental             "
	echo "   4-- Display process status information               "
	echo "   5-- Quit -- Return to Main Menu                      "
	echo "                                                        "
	echo "                Enter your choice:                      "

read n 
clear
case $n in 
	1)  date
	           ;;
    2)  du
               ;;
    3) printenv | less
               ;;
    4) ps -A | less
               ;;
    5) bash ./myhelp.sh 
               ;;
    *) echo "ENTER A CORRECT CHOICE  " ; echo " "; echo " ";  bash ./sys_status.sh 
               ;;
     esac
}

Expert_mode(){
	echo "         SYSTEM STATUS COMMANDS                         "
	echo "                                                        "
	echo "   1-- Display the current date and time                "
	echo "   2-- Current disk usage                               "
	echo "   3-- List current local and environmental             "
	echo "   4-- Display process status information               "
	echo "                                                        "
	echo "   5-- Exit Program                                     "
	echo "                                                        "
	echo "                Enter your choice:                      "


read n 
clear
case $n in 
	1)  date
	           ;;
    2)  du
               ;;
    3) printenv | less
               ;;
    4) ps -A | less
               ;;
    5) exit 
               ;;
    *) echo "ENTER A CORRECT CHOICE  " ; echo " "; echo " ";  bash ./sys_status.sh 
               ;;
     esac
 }

if [[ $# -eq 0 ]]; then 
Novice_mode
else Expert_mode
fi


    

