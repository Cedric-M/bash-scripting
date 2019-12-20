#!/bin/bash
# Setting up Gitflow Workflow. 
# By default it looks for a folder called 'gitfolder' which should be setup by git-newrepo.sh script.

echo "Setting up Gitflow Workflow:"

if [ -d "gitfolder/" ] 
then
    echo "Directory 'gitfolder' exists."
    cd gitfolder
	git checkout -b develop
	git push -u origin develop

	git checkout -b feature develop
	git push -u origin feature

	git checkout -b release develop
	git push -u origin release

	git checkout -b hotfix master
	git push -u origin hotfix


else
    echo "Error: Directory 'gitfolder' does not exists. Please run git-newrepo.sh first."
fi

