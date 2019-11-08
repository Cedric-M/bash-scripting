#!/bin/bash
# This script will ask the name of the folder you want to empty, then erase all the data it may contain and check if it has successfully been emptied.
# Usage: ./<scriptfilename>

echo "Path of the folder you wanna empty:"
echo "(exemple: /path/to/folder)"
read path_folder

if [ -z "$(ls -A .$path_folder)" ]; then # test if the directory doesn't contain any files
   echo "Empty"
else
   echo "Not Empty"
   echo "Do you wanna empty this folder?"

   select yn in "Yes" "No"; do
      case $yn in
         Yes ) rm -rf .$path_folder/*;

		# check if the directory have been successfully empty
		if [ -z "$(ls -A .$path_folder)" ]; then 
		   echo "Success! The directory is now empty!"
		else
		   echo "Failed! Directory have not been emptied."
                fi
	  break;;
         No ) 	
	   exit;;
      esac
   done
fi
