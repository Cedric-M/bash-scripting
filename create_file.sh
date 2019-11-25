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
options=("Word(.docx)" "Text (.txt)" "Pdf (.pdf)" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Word(.docx)")
            echo "You chose create a Word file"
		install_pandoc
		#> file.docx
		echo "" | pandoc -o Word.docx
            ;;
        "Text (.txt)")
            echo "you chose choice 2"
		> MyText.txt
            ;;
        "Pdf (.pdf)")
            echo "you chose choice $REPLY which is $opt"
		> MyPdf.pdf
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done




