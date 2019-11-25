#!/bin/bash
# This script will ask the name of the folder you want to empty, then erase all the data it may contain and check if it has successfully been emptied.
# Usage: ./<scriptfilename>

install_pandoc () {
	echo "We need to install pandoc in order to proceed"
	read -p "Press "enter" to continue"
	sudo apt-get -y install pandoc
}

echo "Which file do you wanna make?"

PS3='Please enter your choice: '
options=("Microsoft Word(.docx)" "Microsoft Excel(.xlsx)" "Microsoft Powerpoint(.pptx)" "Text (.txt)" "LibreOffice (.odt)" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Microsoft Word(.docx)")
            echo "You chose to create a Word file"
		install_pandoc
		echo "" | pandoc -o Word.docx
            ;;
        "Microsoft Excel(.xlsx)")
            echo "You chose to create an Excel file"
		install_pandoc
		echo "" | pandoc -o Excel.xlsx
            ;;
	"Microsoft Powerpoint(.pptx)")
            echo "You chose to create a Powerpoint file"
		install_pandoc
		echo "" | pandoc -o Powerpoint.pptx
            ;;
        "Text (.txt)")
            echo "You chose to create a Text file"
		> Text.txt
            ;;
        "LibreOffice (.odt)")
            echo "You chose to create a LibreOffice file"
		install_pandoc
		echo "" | pandoc -o LibreOffice.odt
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done




