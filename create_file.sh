#!/bin/bash
# This script will ask the name of the folder you want to empty, then erase all the data it may contain and check if it has successfully been emptied.
# Usage: ./<scriptfilename>

echo "Which file do you wanna make?"
echo "Word(.docx) / pdf (.pdf) / Text (.txt)"

PS3='Please enter your choice: '
options=("Word(.docx)" "Text (.txt)" "Pdf (.pdf)" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Word(.docx)")
            echo "you chose choice 1"
            ;;
        "Text (.txt)")
            echo "you chose choice 2"
            ;;
        "Pdf (.pdf)")
            echo "you chose choice $REPLY which is $opt"
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
