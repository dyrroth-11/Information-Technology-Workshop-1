#!/bin/bash

show_menu(){
clear 
echo "                   UNIX HELP MAIN MENU                   "
echo "                                                         "
echo "    1-- File and Directory Management Commands           "
echo "    2-- Text Processing Commands                         "
echo "    3-- System Status Commands                           "
echo "    4-- Exit                                             "
echo "                                                         "
echo "                     Enter your choice:                  "

read n
clear


case $n in
	1)   bash ./file_man.sh 
            ;;
    2)   bash ./text_pro.sh
            ;;
    3)   bash ./sys_status.sh
            ;;
    4)   exit 
            ;;
    *)   bash ./myhelp.sh 
            ;;
    esac

}
clear

if [[ $1 == "help" ]]; then
	 bash ./help.sh 
elif [[ $1 == "file" ]]; then
     bash ./file_man.sh a
elif [[ $1 == "text" ]]; then
	bash ./text_pro.sh a
elif [[ $1 == "status" ]]; then
	bash ./sys_status.sh a
else show_menu;
fi




   



